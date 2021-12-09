# Use this script if you need to generate a new ZIP package

# save-module -Path .\FunctionApp\Modules -Name AzureAD -Repository PSGallery -MinimumVersion 2.0.0
save-module -Path .\FunctionApp\Modules -Name MicrosoftTeams -Repository PSGallery -MinimumVersion 3.0.0

$packageFiles = @(
    ".\FunctionApp\Get-CSOnlineDialOutPolicy"
    ".\FunctionApp\Get-CsOnlineTelephoneNumber",
    ".\FunctionApp\Get-CsTeamsCallingPolicy",
    ".\FunctionApp\Get-UserInfos",
    ".\FunctionApp\Grant-CsDialoutPolicy", 
    ".\FunctionApp\Grant-CsTeamsCallingPolicy",
    ".\FunctionApp\keep-alive",
    ".\FunctionApp\Modules",
    ".\FunctionApp\Set-CsOnlineVoiceUser",
    ".\FunctionApp\host.json",
    ".\FunctionApp\profile.ps1",
    ".\FunctionApp\requirements.psd1"
)
$destinationPath = ".\Packages\Azure\artifact.zip"

Compress-Archive -Path $packageFiles -DestinationPath $destinationPath -CompressionLevel optimal -Force