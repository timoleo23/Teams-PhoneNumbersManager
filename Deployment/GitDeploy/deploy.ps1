$Rgname = "Teams-Telephony-Manager"
$Rgregion = "westeurope"

New-AzResourceGroup -Name $Rgname -Location $Rgregion
New-AzResourceGroupDeployment -ResourceGroupName $Rgname -TemplateFile .\Deployment\GitDeploy\azuredeploy.json -TemplateParameterFile .\Deployment\GitDeploy\parameters-local.json