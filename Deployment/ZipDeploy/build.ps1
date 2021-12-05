# Use this script if you need to generate a new ZIP package

save-module -Path .\Modules -Name AzureAD -Repository PSGallery -MinimumVersion 2.0.0
save-module -Path .\Modules -Name MicrosoftTeams -Repository PSGallery -MinimumVersion 3.0.0

$packageFiles = @(
    ".\Get-CsOnlineTelephoneNumber",
    ".\Get-CsTeamsCallingPolicy",
    ".\Get-UserInfos",
    ".\Grant-CsTeamsCallingPolicy",
    ".\health-check",
    ".\Set-CsOnlineVoiceUser",
    ".\Modules",
    ".\host.json",
    ".\profile.ps1",
    ".\requirements.psd1"
)
$destinationPath = "..\..\Packages\Azure\artifact.zip"

Compress-Archive -Path $packageFiles -DestinationPath $destinationPath -CompressionLevel optimal -Force