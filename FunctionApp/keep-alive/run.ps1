using namespace System.Net

# Input bindings are passed in via param block.
#param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

$MSTeamsDModuleLocation = ".\Modules\MicrosoftTeams\3.0.0\MicrosoftTeams.psd1"
Import-Module $MSTeamsDModuleLocation
$AzureADModuleLocation = ".\Modules\AzureAD\2.0.2.140\AzureAD.psd1"
Import-Module $AzureADModuleLocation -UseWindowsPowerShell -UseWindowsPowerShell

Try {
    Connect-MicrosoftTeams -Credential $Credential -ErrorAction:Stop
    Connect-AzureAD -Credential $Credential -ErrorAction:Stop
}
Catch {
    # $Resp = @{ "Error" = $_.Exception.Message }
    # $StatusCode =  [HttpStatusCode]::BadGateway
}

Disconnect-MicrosoftTeams
Disconnect-AzureAD

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    ContentType = 'application/json'
    Body = "OK"
})
