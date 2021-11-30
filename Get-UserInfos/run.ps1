using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Initialize PS script
$StatusCode = [HttpStatusCode]::OK
$Resp = ConvertTo-Json @()

# Get query parameters to search user profile info - REQUIRED parameter
$SearchString = $Request.Query.SearchString
If ([string]::IsNullOrWhiteSpace($SearchString)){
    $Resp = @{ "Error" = "Missing query parameter - Please provide UPN via query string ?objectId=" }
    $StatusCode =  [HttpStatusCode]::BadRequest
}

# Authenticate to AzureAD and Microsoft Teams using service account
$Account = $env:AdminAccountLogin 
$PWord = ConvertTo-SecureString -String $env:AdminAccountPassword -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Account, $PWord

Try {
    Connect-MicrosoftTeams -Credential $Credential -ErrorAction:Stop
    Connect-AzureAD -Credential $Credential -ErrorAction:Stop
}
Catch {
    $Resp = @{ "Error" = $_.Exception.Message }
    $StatusCode =  [HttpStatusCode]::BadGateway
    Write-Error $_
}

# Get Azure AD Groups
If ($StatusCode -eq [HttpStatusCode]::OK) {
    Try {
        # Get general infos
        $userInfos = Get-CsOnlineUser $SearchString -ErrorAction:Stop | Select-Object -Property objectID,DisplayName,UserPrincipalName,UsageLocation,LineURI,EnterpriseVoiceEnabled,HostedVoiceMail,VoicePolicy,TeamsCallingPolicy
        Write-Host "User profile info collected."
        # Get assigned licenced for PSTN calling
        $CallingPlan = Get-AzureADUserLicenseDetail -ObjectId $userInfos.objectID | Where-Object { $_.SkuPartNumber -like "MCOPSTN*"} | Select-Object SkuPartNumber
        Write-Host "User calling plan sku collected."
        if (-not([string]::IsNullOrWhiteSpace($CallingPlan))) {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Calling Plan' -Value $CallingPlan.SkuPartNumber 
        } else {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Calling Plan' -Value $null 
        }
        # Get user defined emergency location
        $EmergencyLocation = Get-CsOnlineVoiceUser -Identity $SearchString -ExpandLocation | Select-Object Location
        Write-Host "User emergency location collected."
        if (-not([string]::IsNullOrWhiteSpace($EmergencyLocation))) {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Location Id' -Value $EmergencyLocation.location.locationId.Guid 
        } else {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Location Id' -Value $null 
        }
        $Resp = $userInfos | ConvertTo-Json
    }
    Catch {
        $Resp = @{ "Error" = $_.Exception.Message }
        $StatusCode =  [HttpStatusCode]::BadGateway
        Write-Error $_
    }
}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $StatusCode
    ContentType = 'application/json'
    Body = $Resp
})

Disconnect-AzureAD
Disconnect-MicrosoftTeams

# Trap all other exceptions that may occur at runtime and EXIT Azure Function
Trap {
    Write-Error $_.Exception.Message
    break
}
