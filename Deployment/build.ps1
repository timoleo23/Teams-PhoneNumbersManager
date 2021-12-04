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
$destinationPath = ".\Packages\Azure\artifact.zip"

Compress-Archive -Path $packageFiles -DestinationPath $destinationPath -CompressionLevel optimal -Force