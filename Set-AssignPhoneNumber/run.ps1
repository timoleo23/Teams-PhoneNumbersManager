using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Initialize PS script
$StatusCode = [HttpStatusCode]::OK
$Resp = ConvertTo-Json @()

# Validate the request JSON body against the schema_validator
$Schema = Get-jsonSchema ('Set-AssignPhoneNumber')

If (-Not $Request.Body) {
    $Resp = @{ "Error" = "Missing JSON body in the POST request"}
    $StatusCode =  [HttpStatusCode]::BadRequest 
}
Else {
    # Test JSON format and content
    $Result = $Request.Body | ConvertTo-Json | Test-Json -Schema $Schema
    If (-Not $Result){
        $Resp = @{
             "Error" = "The JSON body format is not compliant with the API specifications"
             "detail" = "Verify that the body complies with the definition in module JSON-Schemas and check detailed error code in the Azure Function logs"
         }
         $StatusCode =  [HttpStatusCode]::BadRequest
    }
    else {
        # Set the function variables
        Write-Host 'Inputs validated'
        $Id = $Request.Body.Identity
        If($Request.Body.TelephoneNumber -eq "+null") { $telNumber = $null } Else { $telNumber = $Request.Body.TelephoneNumber }        
        $LocId = $Request.Body.LocationID
    }    
}

# Authenticate to AzureAD using service account
$Account = $env:AdminAccountLogin 
$PWord = ConvertTo-SecureString -String $env:AdminAccountPassword -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Account, $PWord

Try {
    Connect-MicrosoftTeams -Credential $Credential -ErrorAction:Stop
}
Catch {
    $Resp = @{ "Error" = $_.Exception.Message }
    $StatusCode =  [HttpStatusCode]::BadGateway
    Write-Error $_
}

# Get Azure AD Groups
If ($StatusCode -eq [HttpStatusCode]::OK) {
    Try {
        If (-Not([string]::IsNullOrWhiteSpace($LocId))){
            #$Resp = Set-CsOnlineVoiceUser -Identity $Id -TelephoneNumber $telNumber -LocationID $LocId -ErrorAction:Stop
            $Resp =  @{ "Result" = "Number " + $telNumber + " added to User " + $Id + " with location " + $LocId } | ConvertTo-Json
        }
        Else {
            #$Resp = Set-CsOnlineVoiceUser -Identity $Id -TelephoneNumber $telNumber -ErrorAction:Stop
            $Resp = @{ "Result" = "Number " + $telNumber + " added to User " + $Id + " (no location)" } | ConvertTo-Json
        }    
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

Disconnect-MicrosoftTeams

# Trap all other exceptions that may occur at runtime and EXIT Azure Function
Trap {
    Write-Error $_.Exception.Message
    break
}
