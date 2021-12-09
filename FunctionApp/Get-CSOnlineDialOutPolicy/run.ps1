using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell Queue Item trigger function processed a request."

$MSTeamsDModuleLocation = ".\Modules\MicrosoftTeams\3.0.0\MicrosoftTeams.psd1"
Import-Module $MSTeamsDModuleLocation

$ConnectionTimeoutSeconds = 180
$UserName = $env:AdminAccountLogin 
$Password = $env:AdminAccountPassword

$Credential = [System.Management.Automation.PSCredential]::new($UserName, ($Password | ConvertTo-SecureString -Force -AsPlainText))

# Add an option to remove the machine profile
$SessionOption = New-PSSessionOption -NoMachineProfile

# put the MicrosoftTeams cmdlets used by this script (aside from Connect-MicrosoftTeams) here
# this will allow us to check to see if we need to establish a PSRemoting session or not later
$TeamsCmdletsUsed = @(
    'Get-CSOnlineDialOutPolicy'
)

# connect to Microsoft Teams PowerShell
$SW = [Diagnostics.Stopwatch]::StartNew()
do {
    # check if we already have a valid MicrosoftTeams connection
    $SessionInfo = [Microsoft.Teams.ConfigApi.Cmdlets.SessionStateStore]::TryConfigApiSessionInfo

    if (!$SessionInfo) {
        # if we do not yet have the base connection, create it.
        Connect-MicrosoftTeams -Credential $Credential -ErrorAction Stop -Verbose | Out-Null
    }
    $ConfigApiSessionInfo = [Microsoft.Teams.ConfigApi.Cmdlets.SessionStateStore]::ConfigApiSessionInfo
    $ConfigApiSessionInfo.PowershellSessionOption = $SessionOption
    
    # if the cmdlets used in this script are flighted for autorest, 
    # we do not need to establish a PSRemotingSession, and are not hindered by account limits
    $CommandsNeedPSRemoting = $TeamsCmdletsUsed | Where-Object { 
        $_ -notin $ConfigApiSessionInfo.SessionConfiguration.RemotingCmdletsFlightedForAutoRest }
    if ($CommandsNeedPSRemoting.Count -eq 0) {
        $CsSession = $true
        break
    }
    
    # get a "Get" command from the MicrosoftTeams module with no required parameters that is not enabled for AutoRest
    # we will use this command to force creation of a PSRemoting session 
    $TestGetCommand = Get-Command -Module MicrosoftTeams -Verb Get | Where-Object {
                            $_.Name -notin $ConfigApiSessionInfo.SessionConfiguration.RemotingCmdletsFlightedForAutoRest 
                        } | Where-Object {
                            $RequiredParameters = $_.ParameterSets |
                            Where-Object { $_.IsDefault } |
                            ForEach-Object { $_.Parameters } |
                            Where-Object { $_.IsMandatory }
                            !$RequiredParameters
                        } | Select-Object -First 1
    try {
        # invoke our found command, this will initiate the PSRemotingSession
        & $TestGetCommand -ErrorAction Stop | Out-Null

        # if we make it here, we have a valid session, lets grab it to confirm
        $CsSession = Get-PSSession -Name SfBPowerShellSessionViaTeamsModule_*
    }
    catch {
        if ( $_.Exception.InnerException.ErrorCode -ne 0x803381A5 ) {
            Write-Error "Could not connect to Microsoft Teams PowerShell: $($_.Exception.Message)"
            exit 1
        }
        else {
            Write-Warning "Maximum admin sessions in use, retrying for next $($ConnectionTimeoutSeconds - $sw.Elapsed.TotalSeconds) seconds"
        }
    }
} while ($null -eq $CsSession -and $SW.Elapsed.TotalSeconds -lt $ConnectionTimeoutSeconds)
$SW.Stop()

$StatusCode = [HttpStatusCode]::OK
if ($CsSession) {
    Write-Host "Session created in $($SW.Elapsed.TotalSeconds) seconds."
    # Get CS Onilne Dialout policies
    Try {
        $responseMsg = Get-CSOnlineDialOutPolicy | select-object -Property Identity,@{Name='DisplayName';Expression={$_.Identity.Replace('Tag:','')}} | ConvertTo-Json
    }
    Catch {
        $responseMsg = @{ "Error" = $_.Exception.Message }
        $StatusCode =  [HttpStatusCode]::BadGateway
    }
    $CsSession | Remove-PSSession
}
else {
    Write-Error "Could not connect to Microsoft Teams PowerShell"
    $responseMsg = "Could not connect to Microsoft Teams PowerShell"
    $StatusCode =  [HttpStatusCode]::BadGateway
}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $StatusCode
    ContentType = 'application/json'
    Body = $responseMsg
})