$Rgname = "teams-test2"

New-AzResourceGroup -Name $Rgname -Location westeurope
New-AzResourceGroupDeployment -ResourceGroupName $Rgname -TemplateFile .\Deployment\azuredeploy.json -TemplateParameterFile .\Deployment\parameters-local.json