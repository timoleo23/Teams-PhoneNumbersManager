
# ----------------------------------------------------------------------------------
# Code generated by Microsoft (R) AutoRest Code Generator (autorest: 3.5.1, generator: @autorest/powershell@3.0.466)
# Changes may cause incorrect behavior and will be lost if the code is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
This cmdlet is bulk edit operation on users.\r\nReplace the default toll or toll-free number for all users on a specific bridge.
.Description
This cmdlet is bulk edit operation on users.\r\nReplace the default toll or toll-free number for all users on a specific bridge.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUsersDefaultNumberUpdateRequest
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IApiErrorItemAutoGenerated2
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConferencingUser
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODY <IUsersDefaultNumberUpdateRequest>: Update all users default service number.
  [AreaOrState <String>]: Gets or sets AreaOrState filter for user query.
  [BridgeId <String>]: Gets or sets bridge id to use for service number change.
  [BridgeName <String>]: Gets or sets bridge name to use for service number change.
  [CapitalOrMajorCity <String>]: Gets or sets CapitalOrMajorCity filter for user query.
  [CountryOrRegion <String>]: Gets or sets CountryOrRegion filter for user query.
  [FromNumber <String>]: Gets or sets bridge FromNumber to be updated.
  [NumberType <String>]: Gets or sets number inventory type Toll or TollFreee.
  [RescheduleMeeting <Boolean?>]: Gets or sets whether or not users who are modified by this operation should have their existing conferences rescheduled.
  [ToNumber <String>]: Gets or sets bridge ToNumber to be set as default number.
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/set-csodcuserdefaultnumber
#>
function Set-CsOdcUserDefaultNumber {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConferencingUser], [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IApiErrorItemAutoGenerated2])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUsersDefaultNumberUpdateRequest]
    # Update all users default service number.
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets AreaOrState filter for user query.
    ${AreaOrState},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets bridge id to use for service number change.
    ${BridgeId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets bridge name to use for service number change.
    ${BridgeName},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets CapitalOrMajorCity filter for user query.
    ${CapitalOrMajorCity},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets CountryOrRegion filter for user query.
    ${CountryOrRegion},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets bridge FromNumber to be updated.
    ${FromNumber},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets number inventory type Toll or TollFreee.
    ${NumberType},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets whether or not users who are modified by this operation should have their existing conferences rescheduled.
    ${RescheduleMeeting},

    [Parameter(ParameterSetName='SetExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets bridge ToNumber to be set as default number.
    ${ToNumber},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Set = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsOdcUserDefaultNumber_Set';
            SetExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsOdcUserDefaultNumber_SetExpanded';
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
# MIInogYJKoZIhvcNAQcCoIInkzCCJ48CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCYa2NDVGeJTmgv
# qqvdtChVF3oqCJAAZJ7d/87lWcsjYaCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# wb1tbWrJUnMTDXpQzTGCGYUwghmBAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIIzWFnWqPjwfSM/AT2b+m5ieROUx
# bBS8mRA1lrIb5JuqMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBADBgA25A
# 8LHRE8XypEo3OLsDIGxfQ+mYV0s2Mfsbb4NWaHsD4bZTzgLYKVxar54fRmBo79Se
# u2m+hL/5zcZb3cUI7TJcw1zs2UvgMg2MoVWF9p7nOyM+bRyzGaCFGu85zTM7WvS6
# B5DDuNsEk4W86NfhfQd6J9hbUe1fWvQlPM8MZ+urU9uwmT/Aka/N4sMU8QnJPin/
# M+ZCNa8xWICLzg6gxC+rkvEEBBHClOi9m1BWo4IsjxnSPzu9uePiJ3iTQ/GnwrAh
# ScDrNiWn+zLCPi5zKUjR3FaxY0GTvxWruPEyHH8Raq6/4KO2B2NaDPx2jsF2Cm/N
# w3dSzTlpjNnkuvmhghcXMIIXEwYKKwYBBAGCNwMDATGCFwMwghb/BgkqhkiG9w0B
# BwKgghbwMIIW7AIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBVwYLKoZIhvcNAQkQAQSg
# ggFGBIIBQjCCAT4CAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgqrHL
# Jv5aro6lrovUA+z0cpEV1xgZvUdDV2nigdOKbAsCBmGVXZjNhRgRMjAyMTExMzAw
# NjQ5MjguMlowBIACAfSggdikgdUwgdIxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlv
# bnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046OEQ0MS00QkY3LUIz
# QjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2WgghFoMIIH
# FDCCBPygAwIBAgITMwAAAYguzcaBQeG8KgABAAABiDANBgkqhkiG9w0BAQsFADB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMTEwMjgxOTI3NDBaFw0y
# MzAxMjYxOTI3NDBaMIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0
# ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjhENDEtNEJGNy1CM0I3MSUwIwYD
# VQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIICIjANBgkqhkiG9w0B
# AQEFAAOCAg8AMIICCgKCAgEAmucQCAQmkcXHyDrV4S88VeJg2XGqNKcWpsrapRKF
# WchhjLsf/M9XN9bgznLN48BXPAtOlwoedB2kN4bZdPP3KdRNbYq1tNFUh8UnmjCC
# r+CjLlrigHcmS0R+rsN2gBMXlLEZh2W/COuD9VOLsb2P2jDp433V4rUAAUW82M7r
# g81d3OcctO+1XW1h3EtbQtS6QEkw6DYIuvfX7Aw8jXHZnsMugP8ZA1otprpTNUh/
# zRWC7CJyBzymQIDSCdWhVfD4shxe+Rs61axf27bTg5H/V/SkNd9hzM6Nq/y2OjDK
# rLtuN9hS53569uhTNQeAhAVDfeHpEzlMvtXOyX6MTme3jnHdHPj6GLT9AMRIrAf9
# 6hPYOiPEBvHtrg6MpiI3+l6NlbSOs16/FTeljT1+sdsWGtFTZvea9pAqV1aB795a
# DkmZ6sRm5jtdnVazfoWrHd3vDeh35WV08vW4TlOfEcV2+KbairPxaFkJ4+tlsJ+M
# fsVOiTr/ZnDgaMaHnzzogelI3AofDU9ITbMkTtTxrLPygTbRdtbptrnLzBn2jzR4
# TJfkQo+hzWuaMu5OtMZiKV2I5MO0m1mKuUAgoq+442Lw8CQuj9EC2F8nTbJb2NcU
# Dg+74dgJis/P8Ba/OrlxW+Trgc6TPGxCOtT739UqeslvWD6rNQ6UEO9f7vWDkhd2
# vtsCAwEAAaOCATYwggEyMB0GA1UdDgQWBBRkebVQxKO7zru9+o27GjPljMlKSjAf
# BgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNVHR8EWDBWMFSgUqBQ
# hk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNyb3NvZnQl
# MjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYIKwYBBQUHAQEEYDBe
# MFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Nl
# cnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNydDAM
# BgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBCwUA
# A4ICAQBAEFrb+1gIJsv/GKLS2zavm2ek177mk4yu6BuS6ViIuL0e20YN2ddXeiUh
# Edhk3FRto/GD93k5SIyNJ6X+p8uQMOxI23YOSdyEzLJwh7+ftu0If8y3x6AJ0S1d
# 12OZ7fsYqljHUeccneS9DWqipHk8uM8m2ZbBhRnUN8M4iqg4roJGmZKZ9Fc8Z7ZH
# JgM97i7fIyA9hJH017z25WrDJlxapD5dmMyNyzzfAVqaByemCoBn4VkRCGNISx0x
# Rlcb93W6ENhJF1NBjMl3cKVEHW4d8Y0NZhpdXDteLk9HgbJyeCI2fN9GBrCS1B1a
# k+194PGiZKL8+gtK7NorAoAMQvFkYgrHrWCYfjV6PouC3N+A6wOBrckVOHT9PUID
# K5ADCH4ZraQideS9LD/imKHM3I4iazPkocHcFHB9yo5d9lMJZ+pnAAWglQQjMWhU
# qnE/llA+EqjbO0lAxlmUtVioVUswhT3pK6DjFRXM/LUxwTttufz1zBjELkRIZ8uC
# y1YkMxfBFwEos/QFIlDaFSvUn4IiWZA3VLfAEjy51iJwK2jSIHw+1bjCI+FBHcCT
# RH2pP3+h5DlQ5AZ/dvcfNrATP1wwz25Ir8KgKObHRCIYH4VI2VrmOboSHFG79JbH
# dkPVSjfLxTuTsoh5FzoU1t5urG0rwuloZZFZxTkrxfyTkhvmjDCCB3EwggVZoAMC
# AQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29m
# dCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4XDTIxMDkzMDE4MjIy
# NVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# ggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM57RyIQt5osvXJHm9
# DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm95VTcVrifkpa/rg2
# Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzBRMhxXFExN6AKOG6N
# 7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBbfowQHJ1S/rboYiXc
# ag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCOMcg1KL3jtIckw+DJ
# j361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYwXE8s4mKyzbnijYjk
# lqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW/aUgfX782Z5F37Zy
# L9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/wEPK3Rxjtp+iZfD9M
# 269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPKZ6Je1yh2AuIzGHLX
# pyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2BjUYhEfb3BvR/bLU
# HMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfHCBUYP3irRbb1Hode
# 2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYBBAGCNxUBBAUCAwEA
# ATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8vBO4wHQYDVR0OBBYE
# FJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYMKwYBBAGCN0yDfQEB
# MEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMv
# RG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEFBQcDCDAZBgkrBgEE
# AYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB
# /zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEug
# SaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsG
# AQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jv
# b0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsFAAOCAgEAnVV9/Cqt
# 4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518JxNj/aZGx80HU5bbsP
# MeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+iehp4LoJ7nvfam++
# Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2pFaq95W2KFUn0CS9
# QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefwC2qBwoEZQhlSdYo2
# wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7T7uG+jIa2Zb0j/aR
# AfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFORy3BFARxv2T5JL5z
# bcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhLmm77IVRrakURR6nx
# t67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3LwUFJfn6Tvsv4O+S3
# Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5m/8K6TT4JDVnK+AN
# uOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE0ZDxyKs6ijoIYn/Z
# cGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLXMIICQAIBATCCAQChgdikgdUw
# gdIxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsT
# JE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMd
# VGhhbGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAOE8isx8IBeVPSwe
# D805l5Qdeg5CoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# DQYJKoZIhvcNAQEFBQACBQDlT63IMCIYDzIwMjExMTMwMDM1MTM2WhgPMjAyMTEy
# MDEwMzUxMzZaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOVPrcgCAQAwCgIBAAIC
# GvoCAf8wBwIBAAICEVUwCgIFAOVQ/0gCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYK
# KwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUF
# AAOBgQAGV87CxO4uV0l9FD/w+gSe1HhPj6DLWkVMEHiKZPsgAbzoyfcuY4benmM6
# OKX+UCcWim+wC8V8yyU2SS7d3BtXZMB5RgMJExPLRyFYg4QGnDzOfmOEM1xS/m/5
# dNA4nFR9rN+j0nyc4cWLD/42mzx7k/3v5YZyqfPe1eH+aTZ94TGCBA0wggQJAgEB
# MIGTMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABiC7NxoFB4bwq
# AAEAAAGIMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcN
# AQkQAQQwLwYJKoZIhvcNAQkEMSIEIN0ViEjypF8+IzC+xyVGDTtWWfyUVRiBM0Bs
# xLMphJv5MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgZune7awGN0aEgvjP
# 7JyO3NKl7hstX8ChhrKmXtJJQKUwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMAITMwAAAYguzcaBQeG8KgABAAABiDAiBCBPduz3WSeQtg1C+F8a
# vlxuAH1GzCUBkB6pFhWwP1ASGjANBgkqhkiG9w0BAQsFAASCAgAhUqRM20YtHdR8
# fr2DVPR0vxKLopSHHIRSz5ya+h4XipVikRtUuL/bYj6OAjIMqINooApSW27AsOMq
# i0neyNDyPUhWtLBulGpPX/K4DP0LWPyGFctaxoab1D8ZIh/pQeaAs4oIGTzpc5qr
# OBHoyE7XedIHM+Wk2UppjP6WO9mKKnFZxjVLljPqheE/dOaIo8sQqf0H/xhIwCCN
# WUpjvGfJRJlQ5aep4Vn+Z8JRVInuO9QXxLwOVSM9eadJEy8NeMKlUr3F6wTBdQSD
# dytt8W4MLeSQPAFfOB1/fmrDjsvgmmIywO7ZPmF7KkAv30Fb2jF972maLtOXr+HX
# xqz0YuDVDvpbLQiju4b+2xQtjpxCT9VE6zoWyU7RoYlMWXRBLFzrBKOy/jti3DM8
# /uxrMwaXLtq0YfnrfMks/vQK3M1+JjfhEWY258Lm1TrV9OM3O26jkHJCscwZSa8L
# oZNx+AA+gg+BZNhvgh9O5TKI3DNJ2f5kOIroYhu2enWGb78ZwnI2wSLmhiQr3td6
# /o0mzSoO39CfGIPPrZ8nhxetZnXp5qWTPBkbOL8OEi/Qv4keTEU0t7NCTCl6Cndx
# RTEiKFUN06dOViVhJPh45z2QF6hH88W3j4P6ySa5I/cv6D6ZP+ckv3zwJlv/1iev
# IIfqqLPAwDEffGiVtQ+hqMF/4NfkAQ==
# SIG # End signature block
