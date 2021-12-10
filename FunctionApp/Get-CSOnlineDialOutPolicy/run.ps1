using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# API stubbing - The cmdlet Get-CsOnlineDialOutPolicy fails to run on Azure Function
# {
#     "Error": "The term 'Get-CsOnlineDialOutPolicy' is not recognized as the name of a cmdlet, function, script file, or operable program.
#               Check the spelling of the name, or if a path was included, verify that the path is correct and try again."
#  }
$DialoutPolicies = @'
[
      { "Identity": "Tag:DialoutCPCandPSTNInternational"      , "DisplayName": "DialoutCPCandPSTNInternational"     },
      { "Identity": "Tag:DialoutCPCDomesticPSTNInternational" , "DisplayName": "DialoutCPCDomesticPSTNInternational"},
      { "Identity": "Tag:DialoutCPCDisabledPSTNInternational" , "DisplayName": "DialoutCPCDisabledPSTNInternational" },
      { "Identity": "Tag:DialoutCPCInternationalPSTNDomestic" , "DisplayName": "DialoutCPCInternationalPSTNDomestic"},
      { "Identity": "Tag:DialoutCPCInternationalPSTNDisabled" , "DisplayName": "DialoutCPCInternationalPSTNDisabled"},
      { "Identity": "Tag:DialoutCPCandPSTNDomestic"           , "DisplayName": "DialoutCPCandPSTNDomestic"},
      { "Identity": "Tag:DialoutCPCDomesticPSTNDisabled"      , "DisplayName": "DialoutCPCDomesticPSTNDisabled"},
      { "Identity": "Tag:DialoutCPCDisabledPSTNDomestic"      , "DisplayName": "DialoutCPCDisabledPSTNDomestic"},
      { "Identity": "Tag:DialoutCPCandPSTNDisabled"           , "DisplayName": "DialoutCPCandPSTNDisabled"  },
      { "Identity": "Tag:DialoutCPCZoneAPSTNInternational"    , "DisplayName": "DialoutCPCZoneAPSTNInternational" },
      { "Identity": "Tag:DialoutCPCZoneAPSTNDomestic"         , "DisplayName": "DialoutCPCZoneAPSTNDomestic" },
      { "Identity": "Tag:DialoutCPCZoneAPSTNDisabled"         , "DisplayName": "DialoutCPCZoneAPSTNDisabled"  }
]
'@
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    ContentType = 'application/json'
    Body = $DialoutPolicies | ConvertFrom-Json | ConvertTo-Json
})

# # Initialize PS script
# $StatusCode = [HttpStatusCode]::OK
# $Resp = ConvertTo-Json @()

# # Authenticate to MicrosofTeams using service account
# $Account = $env:AdminAccountLogin 
# $PWord = ConvertTo-SecureString -String $env:AdminAccountPassword -AsPlainText -Force
# $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Account, $PWord

# Import-Module MicrosoftTeams

# If ($StatusCode -eq [HttpStatusCode]::OK) {
#     Try {
#         Connect-MicrosoftTeams -Credential $Credential -ErrorAction:Stop
#     }
#     Catch {
#         $Resp = @{ "Error" = $_.Exception.Message }
#         $StatusCode =  [HttpStatusCode]::BadGateway
#         Write-Error $_
#     }
# }

# # Get CS Online Dialout Policies
# If ($StatusCode -eq [HttpStatusCode]::OK) {
#     Try {
#         $Resp = Get-CSOnlineDialOutPolicy | select-object -Property Identity,@{Name='DisplayName';Expression={$_.Identity.Replace('Tag:','')}} | ConvertTo-Json
#     }
#     Catch {
#         $Resp = @{ "Error" = $_.Exception.Message }
#         $StatusCode =  [HttpStatusCode]::BadGateway
#         Write-Error $_
#     }
# }

# # Associate values to output bindings by calling 'Push-OutputBinding'.
# Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
#     StatusCode = $StatusCode
#     ContentType = 'application/json'
#     Body = $Resp
# })

# Disconnect-MicrosoftTeams
# Get-PSSession | Remove-PSSession

# # Trap all other exceptions that may occur at runtime and EXIT Azure Function
# Trap {
#     Write-Error $_.Exception.Message
#     Disconnect-MicrosoftTeams
#     break
# }
