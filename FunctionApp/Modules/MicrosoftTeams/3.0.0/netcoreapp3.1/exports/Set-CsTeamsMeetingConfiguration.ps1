
# ----------------------------------------------------------------------------------
# Code generated by Microsoft (R) AutoRest Code Generator (autorest: 3.5.1, generator: @autorest/powershell@3.0.466)
# Changes may cause incorrect behavior and will be lost if the code is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis

.Description

.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
System.Object
.Outputs
System.Object
.Link
https://docs.microsoft.com/en-us/powershell/module/skype/set-csteamsmeetingconfiguration
#>
function Set-CsTeamsMeetingConfiguration {
[CmdletBinding(PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientVideoPortRange},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${DisableAnonymousJoin},

    [Parameter(Position=1)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${Identity},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${Instance},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientAppSharingPortRange},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${Force},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${EnableQoS},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${DisableAppInteractionForAnonymousUsers},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${LogoURL},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientAppSharingPort},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientVideoPort},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientAudioPortRange},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientMediaPortRangeEnabled},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${ClientAudioPort},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${CustomFooterText},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${HelpURL},

    [Parameter()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Object]
    ${LegalURL}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            __AllParameterSets = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsTeamsMeetingConfiguration';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIIjfAYJKoZIhvcNAQcCoIIjbTCCI2kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBES5DjZFhNVgIh
# qinabIvm18OavBdJeouyqPBYv9I3U6CCDXMwggXxMIID2aADAgECAhMzAAACGYwK
# n7IWKxDmAAAAAAIZMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwNDI5MTkxMjU1WhcNMjIwNDI4MTkxMjU1WjByMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMRwwGgYDVQQDExNTa3lw
# ZSBTb2Z0d2FyZSBTYXJsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
# nxMscK0w8ebaayvQhxPtLTkomfivSX4yNLmQJGXG+1yUKU4fmdQAhZm5mSIdFAEv
# sjAwCP3vUmh2N5R5TrAN/whfjGcDDlCYonKcrmuSaXxGuyjXKlELlRmPOaobqeo1
# 1Amcz6SRbNYBtKtRiP5ip2PfAvtJp7AvH0mZfGXKehE4C+5t8XYZ3K1JU3Tdb+3Z
# z+smovI8h/ZPe+uV2ORTxxa9kBLDvueJZbzKkn/WAIX/8rq/ywHtffSTXSueUmoe
# NJ0UCyoNBr90xtnozaCVknyRG8qWzHEZlc43FPNwIW6y8k1JSuspq+SML/HP7Fjv
# 7zcTLtM1HBBX/I9KxBJSBQIDAQABo4IBcjCCAW4wEwYDVR0lBAwwCgYIKwYBBQUH
# AwMwHQYDVR0OBBYEFAZqNYGuvWVnCVhV5aJBAvx4cJdwMFAGA1UdEQRJMEekRTBD
# MSkwJwYDVQQLEyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVydG8gUmljbzEWMBQG
# A1UEBRMNMjMwMjU0KzQ2NDU2MjAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzcitW2o
# ynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEGCCsG
# AQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0MAwG
# A1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBABRKE3yDcJHa8xnyFn9Z+0m8
# vQLeUGC9933o78aSOWDkvcPFPczSqvw4cUmQnHPcRwDS1mwlYs5TmCdIS6Ij++Or
# uWxfgMdPRpveO6zT8rDWBL2sqCT/k5yCO75DVhT4kE/qEe81T4OY/Ejx3lZbBE1a
# z2k5dOL/ZWqNu8FdKSDmBZEeENOYy9UIyLf6coV2KLERB2IZ3W8U3z37fPA5nRMw
# +9sWWb98Gdm8exr4UwmnU0q8Y0KvJx/xwqOPShgiDjHsWev3fzsKSYzebkfBdLbw
# DZl9880mrGr03CfEWGDWa0tJui3LRh4csIuxWHkUrFw/R2N8baMDGPEUCh7dE+qf
# nuuMJ5tRUmnMOqyqj8dLXUZa+yxxpS91qde5asle0+WfzjLQ1D+T6ElhLBQU9LNh
# 5nhbD1+kJkVHFAU2tM3MXa2tgMVWFWQP4IqcQDWMW68M90VkGUrJ+t63oRO8HwbL
# 4IZJxG0wW/527ypSQTmpLSX6mM2vIyFHsO4zCvjDq8yfnDk25bpUNJbfOpqVkkWP
# UE+4bNIQbzcWgKgPIZDOka3pxq4vI05ns3tnvWS7TKiG+7ZYr5ZBSS6pr1Wykt0U
# aXxaUZuAWwikj2gvZAXR35f5bDg+36WoJTpQKNqzsY7dyL6SxkcZI8DcEKWEfbWd
# BX8q+w5hzEWqh7TrYJ93MIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkqhkiG
# 9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEy
# MDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIw
# MTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQgQ29k
# ZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKC
# AgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03a8YS
# 2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akrrnoJ
# r9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0RrrgOGSs
# bmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy4BI6
# t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9sbKv
# kjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAhdCVf
# GCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8kA/DR
# elsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTBw3J6
# 4HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmnEyim
# p31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90lfdu
# +HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0wggHp
# MBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2oynUC
# lTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0T
# AQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBaBgNV
# HR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9w
# cm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsGAQUF
# BwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3Br
# aS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNVHSAE
# gZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsGAQUF
# BwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABlAG0A
# ZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKbC5YR
# 4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11lhJB9
# i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6I/MT
# faaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0wI/z
# Rive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560STkK
# xgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQamASoo
# PoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGaJ+HN
# pZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ahXJbY
# ANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA9Z74
# v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33VtY5E9
# 0Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr/Xmf
# wb1tbWrJUnMTDXpQzTGCFV8wghVbAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIBBTdEdyJMwPTWrP5UCM+tn/Jc/6
# 4FfZAe4B5Pk0GfxMMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAIXAb0uh
# pTxJr5efKejAKBrFXWiwUjX78A+8XaYEW6nWUtxzNZg779n9ISMJAZyx9h9ETTBP
# jmuWm+c+2X/LYHomKpjgFbyeO/U+H77GBb8rNM9+JfF5T1xunXI2/b0fbAtZFAjG
# /7vZCQ+LjYTYThz47X343egdOI4nyvnitXcAFxvYsrfpRaWqBAQykqrYWkHr4PLK
# WLPv2WBwe5m2SIDH3s9Wk7d/GwyJUdFwxnMa3UZX0/EKzkon43lyuLeBX+SGgguD
# KTy4TSNPll28eKdxMtF9UmwtzVkWuPa7tF3AQu7kFscjbmze6eG6RpyzFTcQIH78
# yWSSM3TZ8RuhtCyhghLxMIIS7QYKKwYBBAGCNwMDATGCEt0wghLZBgkqhkiG9w0B
# BwKgghLKMIISxgIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBVQYLKoZIhvcNAQkQAQSg
# ggFEBIIBQDCCATwCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgZMnC
# tYHKSnDoP39HwKHzfFrEdoYmBbjJ6rqLA0bzdUwCBmGT7v7Q8RgTMjAyMTExMzAw
# NjQ5MjYuMzQ0WjAEgAIB9KCB1KSB0TCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVl
# cnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjQ2MkYtRTMxOS0zRjIw
# MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIORDCCBPUw
# ggPdoAMCAQICEzMAAAFYcFoi976W5gMAAAAAAVgwDQYJKoZIhvcNAQELBQAwfDEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWlj
# cm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjEwMTE0MTkwMjE0WhcNMjIw
# NDExMTkwMjE0WjCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAk
# BgNVBAsTHVRoYWxlcyBUU1MgRVNOOjQ2MkYtRTMxOS0zRjIwMSUwIwYDVQQDExxN
# aWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOC
# AQ8AMIIBCgKCAQEAoR8Ll2D1q7DQoAUbC/XvIwUbxJ+qBRQULwPPBryaumzR7KFF
# DY2/0rv+zP99UTWj/V9mnirhIaK1yyM8a06eNbHjlUgVMg1Cl2g6Gaw92cXLeAFe
# kwa1N9eouedQTj5WYoLa8CE5nTpTq+3kJzRwmioQm3M5ZHARrPwGhfacJfVEFeQf
# c+IC7u1Ym/dXzOFFI8sWZ6In4IjBrLTgBSCavBcRAe8keBvo+IsLGATZUAEIM1Pk
# JXKJ41qlxmIrHXpBsOV7so7CSMwQgqRzFH7fZ0My3MK2khQOCsrGaPH4ab3iMeJ6
# iE4dS6GXe7eGUBh+/ZID/zpPVQ0CIFCDda73GwIDAQABo4IBGzCCARcwHQYDVR0O
# BBYEFEtw2Rt9nRwYH+7nfqB7kyfTovlYMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8
# RhvFM2hahW1VMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNy
# bDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9z
# b2Z0LmNvbS9wa2kvY2VydHMvTWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwG
# A1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQAD
# ggEBADnfKANai9CuHx+6WI1dbQJQFPN8DhKXiH4g8SHmU12uEMXLpPgwD2O6nXPO
# UWSlitRzSxN9AIA6cCOa6c+CeZpLltJ/ZUfwyDfhTaqA8sicwCQZoGz8HNpsnrlg
# p7U/kgpk3taPZtF8IrTcRLyRLuDphAfruLEwJAIsOt5YMoliw2zRyE2kk4DPIl4Z
# /JFR75NRRsXCOwL/XwqZg4NWClFJhnHRbuOsaqUlUR6G7ClIiwY5gIEyckM10qc/
# 7XcKDrxxW0I1fqQl29QUfRmK48yUFgPsasI+oBGVKf6/F98yK+7YMwkkuR7LDFJ8
# PnawNX40F/kieK4oVwT3LSb2baMwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0G
# CSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3Jp
# dHkgMjAxMDAeFw0xMDA3MDEyMTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFBDQSAyMDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
# CgKCAQEAqR0NvHcRijog7PwTl/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vhwna3
# PmYrW/AVUycEMR9BGxqVHc4JE458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs1nMw
# VyaCo0UN0Or1R4HNvyRgMlhgRvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WETbijG
# GvmGgLvfYfxGwScdJGcSchohiq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wGPmd/
# 9WbAA5ZEfu/QS/1u5ZrKsajyeioKMfDaTgaRtogINeh4HLDpmc085y9Euqf03GS9
# pAHBIAmTeM38vMDJRF1eFpwBBU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGCNxUB
# BAMCAQAwHQYDVR0OBBYEFNVjOlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQBgjcU
# AgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8G
# A1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeG
# RWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jv
# b0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUH
# MAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2Vy
# QXV0XzIwMTAtMDYtMjMuY3J0MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQBgjcu
# AzCBgTA9BggrBgEFBQcCARYxaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BLSS9k
# b2NzL0NQUy9kZWZhdWx0Lmh0bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwA
# XwBQAG8AbABpAGMAeQBfAFMAdABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0B
# AQsFAAOCAgEAB+aIUQ3ixuCYP4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkws8LF
# Zslq3/Xn8Hi9x6ieJeP5vO1rVFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/XPle
# FzWYJFZLdO9CEMivv3/Gf/I3fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO9sp6
# AG9LMEQkIjzP7QOllo9ZKby2/QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHOmWaQ
# jP9qYn/dxUoLkSbiOewZSnFjnXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU9Mal
# CpaGpL2eGq4EQoO4tYCbIjggtSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6YacR
# y5rYDkeagMXQzafQ732D8OE7cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdlR3jo
# +KhIq/fecn5ha293qYHLpwmsObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rIDVWZ
# eodzOwjmmC3qjeAzLhIp9cAvVCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkqmqMR
# ZjDTu3QyS99je/WZii8bxyGvWbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN+w2/
# XU/pnR4ZOC+8z1gFLu8NoFA12u8JJxzVs341Hgi62jbb01+P3nSISRKhggLSMIIC
# OwIBATCB/KGB1KSB0TCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28x
# JjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjQ2MkYtRTMxOS0zRjIwMSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQCp
# yStzGufRCyGm6jOOn6X4NJ80v6CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA5VA5eDAiGA8yMDIxMTEzMDA5NDcz
# NloYDzIwMjExMjAxMDk0NzM2WjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDlUDl4
# AgEAMAoCAQACAiXWAgH/MAcCAQACAhEXMAoCBQDlUYr4AgEAMDYGCisGAQQBhFkK
# BAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJ
# KoZIhvcNAQEFBQADgYEAUFt/xjgOouU+eCARcdXfzJVSmv1wacm+LPKXinxrhhy0
# FNro5dpiP7rxA22l//xrmnyXb/fm0T8TP+4jXbVGTajvjzJ9sR4xGTf0tUkcPDJm
# blkx6dKTEh3AGiPZ/VjSG+dTqs6Nd2gdg4ajsFoLGci2FrKv60IL1/8pBtC+Io0x
# ggMNMIIDCQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAA
# AVhwWiL3vpbmAwAAAAABWDANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkD
# MQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCCfU547gHVd1fKMO7bp5UwD
# b8GUIEUKIRaA8BrD0lpGrjCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIPJK
# M41shjWXbMpPhtriwIjhaQELqwh9H25JU1XHcNMHMIGYMIGApH4wfDELMAkGA1UE
# BhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAc
# BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAFYcFoi976W5gMAAAAAAVgwIgQgPKsU
# U5F/ifnBeF3l8aJLp7dnBT9NHqXPcL3oNGbd678wDQYJKoZIhvcNAQELBQAEggEA
# diT7QzC74RszbDNFHkjj46SYOZDGveK9DbdUKX1rK4l5NzY7ZVrD2XdLQG54Zw4/
# HqbbYYyZWS3cMmdwPovIINGdccVzCWenJUyc7Q10Ghvo59NbwNfiRPnTgTBBufDK
# NYq9USekUOXR02lVrMs/p+T0z6X79U6PSS9MnrVAioNuOre8Bb7ut4RTUsVZNhiD
# Y8DKr28dG4GO/X4UsXfIjjjpHMaIkHtRrYU0/ofxsRrEK7s98YCObnelVAUak93k
# aYvoETZYgltJeF3pBw+wpIKPaqM/EcUTIepYYW+/a+ba6p3RpST2JKr/Xr6nyLQw
# Ay578AOaoF9N4zMlXx1cWw==
# SIG # End signature block
