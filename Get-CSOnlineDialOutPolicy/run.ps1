using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Initialize PS script
$StatusCode = [HttpStatusCode]::OK

$DialoutPolicies = @'
[
      { "Identity": "Tag:DialoutCPCandPSTNInternational"      },
      { "Identity": "Tag:DialoutCPCDomesticPSTNInternational" },
      { "Identity": "Tag:DialoutCPCDisabledPSTNInternational" },
      { "Identity": "Tag:DialoutCPCInternationalPSTNDomestic" },
      { "Identity": "Tag:DialoutCPCInternationalPSTNDisabled" },
      { "Identity": "Tag:DialoutCPCandPSTNDomestic"           },
      { "Identity": "Tag:DialoutCPCDomesticPSTNDisabled"      },
      { "Identity": "Tag:DialoutCPCDisabledPSTNDomestic"      },
      { "Identity": "Tag:DialoutCPCandPSTNDisabled"           },
      { "Identity": "Tag:DialoutCPCZoneAPSTNInternational"    },
      { "Identity": "Tag:DialoutCPCZoneAPSTNDomestic"         },
      { "Identity": "Tag:DialoutCPCZoneAPSTNDisabled"         }
]
'@ 

$Resp = $DialoutPolicies | ConvertFrom-Json | ConvertTo-Json

# Authenticate to AzureAD using service account
# $Account = $env:AdminAccountLogin 
# $PWord = ConvertTo-SecureString -String $env:AdminAccountPassword -AsPlainText -Force
# $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Account, $PWord

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

# Get CS Online Dialout Policies
# If ($StatusCode -eq [HttpStatusCode]::OK) {
#     Try {
#         $Resp = Get-CSOnlineDialOutPolicy | Select-Object Identity | ConvertTo-Json
#     }
#     Catch {
#         $Resp = @{ "Error" = $_.Exception.Message }
#         $StatusCode =  [HttpStatusCode]::BadGateway
#         Write-Error $_
#     }
# }

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $StatusCode
    ContentType = 'application/json'
    Body = $Resp
})

# Disconnect-MicrosoftTeams

# Trap all other exceptions that may occur at runtime and EXIT Azure Function
Trap {
    Write-Error $_.Exception.Message
    break
}
