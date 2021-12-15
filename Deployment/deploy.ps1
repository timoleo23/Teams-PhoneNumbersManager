Param (
    [parameter(mandatory = $false)] $displayName = "Teams Telephony Manager",   # Display name for your application registered in Azure AD 
    [parameter(mandatory = $false)] $rgName = "Teams-Telephony-Manager",        # Name of the resource group for Azure
    [parameter(mandatory = $false)] $resourcePrefix = "Teams",                  # Prefix for the resources deployed on your Azure subscription
    [parameter(mandatory = $false)] $location = 'westeurope',                   # Location (region) where the Azure resource are deployed
    [parameter(mandatory = $true)] $serviceAccountUPN,                          # AzureAD Service Account UPN
    [parameter(mandatory = $true)] $serviceAccountSecret                        # AzureAD Service Account password
)

$base = $PSScriptRoot

# Import required PowerShell modules for the deployment
Import-Module AzureAD -UseWindowsPowerShell # Required to register the app in Azure AD
Import-Module Az.Accounts, Az.Resources     # Required to deploy the Azure resource

# Connect to AzureAD and Azure using modern authentication
Connect-AzAccount

# Auto-connect to AzureAD using Azure connection context
$context = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile.DefaultContext
$aadToken = [Microsoft.Azure.Commands.Common.Authentication.AzureSession]::Instance.AuthenticationFactory.Authenticate($context.Account, $context.Environment, $context.Tenant.Id.ToString(), $null, [Microsoft.Azure.Commands.Common.Authentication.ShowDialog]::Never, $null, "https://graph.windows.net").AccessToken
Connect-AzureAD -AadAccessToken $aadToken -AccountId $context.Account.Id -TenantId $context.tenant.id

Write-Host "Checking if app '$displayName' is already registered"
$AAdapp = Get-AzureADApplication -SearchString $displayName
If([string]::IsNullOrEmpty($AAdapp)){
    Write-Host "Register a new app in Azure AD using Azure Function app name"
    $AADapp = New-AzureADApplication -DisplayName $displayName -AvailableToOtherTenants $false
    $AppIdURI = "api://azfunc-" + $AADapp.AppId
    # Expose an API and create an Application ID URI
    Set-AzureADApplication -ObjectId $AADapp.ObjectId -IdentifierUris $AppIdURI
    # Create a new app secret with a default validaty period of 1 year - Get the generated secret
    $secret   = (New-AzureADApplicationPasswordCredential -ObjectId $AADapp.ObjectId -EndDate (Get-Date).date.AddYears(1)).Value
    # Get the AppID from the newly registered App
    $clientID = $AADapp.AppId
    # Get the tenantID from current AzureAD PowerShell session
    $tenantID = (Get-AzureADTenantDetail).ObjectId
    Write-Host "New app '$displayName' registered into AzureAD"
}
Else {
    Write-Host "Generating a new secret for app '$displayName'"
    $secret   = (New-AzureADApplicationPasswordCredential -ObjectId $AADapp.ObjectId -EndDate (Get-Date).date.AddYears(1)).Value
    # Get the AppID from the newly registered App
    $clientID = $AADapp.AppId
    # Get the tenantID from current AzureAD PowerShell session
    $tenantID = (Get-AzureADTenantDetail).ObjectId
}

Write-Host "Deploy resource to Azure subscription"
New-AzResourceGroup -Name $rgName -Location $location -Force
Write-Host "Resource Group $rgName created in location $location - Now initiating Azure resource deployments..."
$deploymentName = 'deploy-' + (Get-Date -Format "yyyyMMdd-hhmm")
$parameters = @{
    resourcePrefix          = $resourcePrefix
    serviceAccountUPN       = $serviceAccountUPN
    serviceAccountSecret    = $serviceAccountSecret
    clientID                = $clientID
}

$outputs = New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile $base\ZipDeploy\azuredeploy.json -TemplateParameterObject $parameters -Name $deploymentName -ErrorAction SilentlyContinue
If ($outputs.provisioningState -ne 'Succeeded') {
    Write-Error "ARM deployment failed with error:"
    Write-Error $outputs.error
    return
}
Write-Host "ARM template deployed successfully"

# Assign current user with the permissions to list and read Azure KeyVault secrets (to enable the connection with the Power Automate flow)
$CurrentUserId = Get-AzContext | ForEach-Object account | ForEach-Object Id
$resourceId = (Get-AzResource -ResourceGroupName $rgName -ResourceName $outputs.Outputs.azKeyVaultName.Value -ResourceType "Microsoft.KeyVault/vaults").ResourceId
Write-Host "Assigning 'Reader' role on Azure KeyVault $outputs.Outputs.azKeyVaultName.Value for user $CurrentUserId"
New-AzRoleAssignment -SignInName $CurrentUserId -RoleDefinitionName 'Reader' -Scope $resourceId

Write-Host "Getting the Azure Function App key for warm-up test"
## lookup the resource id for your Azure Function App ##
$resourceId = (Get-AzResource -ResourceGroupName $rgName -ResourceName $outputs.Outputs.azFuncAppName.Value -ResourceType "Microsoft.Web/sites").ResourceId

## compose the operation path for listing keys ##
$path = "$resourceId/host/default/listkeys?api-version=2021-02-01"
$result = Invoke-AzRestMethod -Path $path -Method POST

if($result -and $result.StatusCode -eq 200)
{
   ## Retrieve result from Content body as a JSON object ##
   $contentBody = $result.Content | ConvertFrom-Json
   $code = $contentBody.masterKey
}
else {
    Write-Error "Couldn't retrive the Azure Function app master key - Warm-up test not executed"
    return
}

Write-Host "Warming-up Azure Function apps - This will take a few minutes"
& $base\warmup.ps1 -hostname $outputs.Outputs.azFuncHostName.Value -code $code -tenantID $tenantID -clientID $clientID -secret $secret

Write-Host "Deployment script terminated"
