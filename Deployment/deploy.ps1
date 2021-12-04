$Rgname = "teams-test"
New-AzResourceGroup -Name $Rgname -Location westeurope
New-AzResourceGroupDeployment -ResourceGroupName $Rgname -TemplateFile .\Deployment\azuredeploy.json -TemplateParameterFile .\Deployment\parameters_local.json