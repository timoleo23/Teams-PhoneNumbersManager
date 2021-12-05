$Rgname = "teams-test"

New-AzResourceGroup -Name $Rgname -Location westeurope
New-AzResourceGroupDeployment -ResourceGroupName $Rgname -TemplateFile .\Deployment\GitDeploy\azuredeploy.json -TemplateParameterFile .\Deployment\GitDeploy\parameters-local.json