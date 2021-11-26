
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates a specific AutoAttendant.
PUT Teams.VoiceApps/auto-attendants/identity.
.Description
Updates a specific AutoAttendant.
PUT Teams.VoiceApps/auto-attendants/identity.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IAutoAttendant
.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUpdateAutoAttendantResponse
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODY <IAutoAttendant>: .
  [ApplicationInstance <String[]>]: 
  [CallFlow <ICallFlow[]>]: 
    [Greeting <IPrompt[]>]: 
      [ActiveType <String>]: 
      [AudioFilePromptDownloadUri <String>]: 
      [AudioFilePromptFileName <String>]: 
      [AudioFilePromptId <String>]: 
      [TextToSpeechPrompt <String>]: 
    [Id <String>]: 
    [MenuDialByNameEnabled <Boolean?>]: 
    [MenuDirectorySearchMethod <String>]: 
    [MenuName <String>]: 
    [MenuOption <IMenuOption[]>]: 
      [Action <String>]: 
      [AudioFilePromptDownloadUri <String>]: 
      [AudioFilePromptFileName <String>]: 
      [AudioFilePromptId <String>]: 
      [CallTargetEnableTranscription <Boolean?>]: 
      [CallTargetId <String>]: 
      [CallTargetType <String>]: 
      [DtmfResponse <String>]: 
      [PromptActiveType <String>]: 
      [PromptTextToSpeechPrompt <String>]: 
      [VoiceResponse <String[]>]: 
    [MenuPrompt <IPrompt[]>]: 
    [Name <String>]: 
  [CallHandlingAssociation <ICallHandlingAssociation[]>]: 
    [CallFlowId <String>]: 
    [Enabled <Boolean?>]: 
    [Priority <Int32?>]: 
    [ScheduleId <String>]: 
    [Type <String>]: 
  [DefaultCallFlowGreeting <IPrompt[]>]: 
  [DefaultCallFlowId <String>]: 
  [DefaultCallFlowName <String>]: 
  [DialByNameResourceId <String>]: 
  [ExclusionScopeGroupDialScopeGroupId <String[]>]: 
  [ExclusionScopeType <String>]: 
  [GreetingsSettingAuthorizedUser <String[]>]: 
  [Id <String>]: 
  [InclusionScopeGroupDialScopeGroupId <String[]>]: 
  [InclusionScopeType <String>]: 
  [LanguageId <String>]: 
  [MenuDialByNameEnabled <Boolean?>]: 
  [MenuDirectorySearchMethod <String>]: 
  [MenuName <String>]: 
  [MenuOption <IMenuOption[]>]: 
  [MenuPrompt <IPrompt[]>]: 
  [Name <String>]: 
  [OperatorEnableTranscription <Boolean?>]: 
  [OperatorId <String>]: 
  [OperatorSharedVoicemailEnableTranscription <Boolean?>]: 
  [OperatorSharedVoicemailId <String>]: 
  [OperatorSharedVoicemailType <String>]: 
  [OperatorType <String>]: 
  [Schedule <ISchedule[]>]: 
    [AssociatedConfigurationId <String[]>]: 
    [FixedScheduleDateTimeRange <IDateTimeRange[]>]: 
      [End <String>]: 
      [Start <String>]: 
    [Id <String>]: 
    [Name <String>]: 
    [RecurrenceRangeEnd <DateTime?>]: 
    [RecurrenceRangeNumberOfOccurrence <Int32?>]: 
    [RecurrenceRangeStart <DateTime?>]: 
    [RecurrenceRangeType <String>]: 
    [Type <String>]: 
    [WeeklyRecurrentScheduleFridayHour <ITimeRange[]>]: 
      [End <String>]: 
      [Start <String>]: 
    [WeeklyRecurrentScheduleIsComplemented <Boolean?>]: 
    [WeeklyRecurrentScheduleMondayHour <ITimeRange[]>]: 
    [WeeklyRecurrentScheduleSaturdayHour <ITimeRange[]>]: 
    [WeeklyRecurrentScheduleSundayHour <ITimeRange[]>]: 
    [WeeklyRecurrentScheduleThursdayHour <ITimeRange[]>]: 
    [WeeklyRecurrentScheduleTuesdayHour <ITimeRange[]>]: 
    [WeeklyRecurrentScheduleWednesdayHour <ITimeRange[]>]: 
  [TenantId <String>]: 
  [TimeZoneId <String>]: 
  [VoiceId <String>]: 
  [VoiceResponseEnabled <Boolean?>]: 

CALLFLOW <ICallFlow[]>: .
  [Greeting <IPrompt[]>]: 
    [ActiveType <String>]: 
    [AudioFilePromptDownloadUri <String>]: 
    [AudioFilePromptFileName <String>]: 
    [AudioFilePromptId <String>]: 
    [TextToSpeechPrompt <String>]: 
  [Id <String>]: 
  [MenuDialByNameEnabled <Boolean?>]: 
  [MenuDirectorySearchMethod <String>]: 
  [MenuName <String>]: 
  [MenuOption <IMenuOption[]>]: 
    [Action <String>]: 
    [AudioFilePromptDownloadUri <String>]: 
    [AudioFilePromptFileName <String>]: 
    [AudioFilePromptId <String>]: 
    [CallTargetEnableTranscription <Boolean?>]: 
    [CallTargetId <String>]: 
    [CallTargetType <String>]: 
    [DtmfResponse <String>]: 
    [PromptActiveType <String>]: 
    [PromptTextToSpeechPrompt <String>]: 
    [VoiceResponse <String[]>]: 
  [MenuPrompt <IPrompt[]>]: 
  [Name <String>]: 

CALLHANDLINGASSOCIATION <ICallHandlingAssociation[]>: .
  [CallFlowId <String>]: 
  [Enabled <Boolean?>]: 
  [Priority <Int32?>]: 
  [ScheduleId <String>]: 
  [Type <String>]: 

DEFAULTCALLFLOWGREETING <IPrompt[]>: .
  [ActiveType <String>]: 
  [AudioFilePromptDownloadUri <String>]: 
  [AudioFilePromptFileName <String>]: 
  [AudioFilePromptId <String>]: 
  [TextToSpeechPrompt <String>]: 

INPUTOBJECT <IConfigApiBasedCmdletsIdentity>: Identity Parameter
  [AppId <String>]: 
  [AudioFileId <String>]: 
  [Bssid <String>]: 
  [ChassisId <String>]: 
  [CivicAddressId <String>]: 
  [ConnectorInstanceId <String>]: Connector Instance Id
  [Country <String>]: 
  [EndpointId <String>]: Application instance Id.
  [GroupId <String>]: The ID of a group whose policy assignments will be returned.
  [Id <String>]: 
  [Identity <String>]: 
  [Locale <String>]: 
  [LocationId <String>]: Location id.
  [OdataId <String>]: A composite URI of a template.
  [OperationId <String>]: The ID of a batch policy assignment operation.
  [OrderId <String>]: 
  [PackageName <String>]: The name of a specific policy package
  [PolicyType <String>]: The policy type for which group policy assignments will be returned.
  [PortId <String>]: 
  [PublicTemplateLocale <String>]: Language and country code for localization of publicly available templates.
  [SubnetId <String>]: 
  [TeamId <String>]: Team Id
  [UserId <String>]: UserId. Supports Guid. Eventually UPN and SIP.
  [Version <String>]: 
  [WfmTeamId <String>]: Team Id

MENUOPTION <IMenuOption[]>: .
  [Action <String>]: 
  [AudioFilePromptDownloadUri <String>]: 
  [AudioFilePromptFileName <String>]: 
  [AudioFilePromptId <String>]: 
  [CallTargetEnableTranscription <Boolean?>]: 
  [CallTargetId <String>]: 
  [CallTargetType <String>]: 
  [DtmfResponse <String>]: 
  [PromptActiveType <String>]: 
  [PromptTextToSpeechPrompt <String>]: 
  [VoiceResponse <String[]>]: 

MENUPROMPT <IPrompt[]>: .
  [ActiveType <String>]: 
  [AudioFilePromptDownloadUri <String>]: 
  [AudioFilePromptFileName <String>]: 
  [AudioFilePromptId <String>]: 
  [TextToSpeechPrompt <String>]: 

SCHEDULE <ISchedule[]>: .
  [AssociatedConfigurationId <String[]>]: 
  [FixedScheduleDateTimeRange <IDateTimeRange[]>]: 
    [End <String>]: 
    [Start <String>]: 
  [Id <String>]: 
  [Name <String>]: 
  [RecurrenceRangeEnd <DateTime?>]: 
  [RecurrenceRangeNumberOfOccurrence <Int32?>]: 
  [RecurrenceRangeStart <DateTime?>]: 
  [RecurrenceRangeType <String>]: 
  [Type <String>]: 
  [WeeklyRecurrentScheduleFridayHour <ITimeRange[]>]: 
    [End <String>]: 
    [Start <String>]: 
  [WeeklyRecurrentScheduleIsComplemented <Boolean?>]: 
  [WeeklyRecurrentScheduleMondayHour <ITimeRange[]>]: 
  [WeeklyRecurrentScheduleSaturdayHour <ITimeRange[]>]: 
  [WeeklyRecurrentScheduleSundayHour <ITimeRange[]>]: 
  [WeeklyRecurrentScheduleThursdayHour <ITimeRange[]>]: 
  [WeeklyRecurrentScheduleTuesdayHour <ITimeRange[]>]: 
  [WeeklyRecurrentScheduleWednesdayHour <ITimeRange[]>]: 
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/set-csautoattendant
#>
function Set-CsAutoAttendant {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUpdateAutoAttendantResponse])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [System.String]
    # Id for the auto attendant to be updated.
    ${Identity},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IAutoAttendant]
    # .
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # .
    ${ApplicationInstance},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICallFlow[]]
    # .
    # To construct, see NOTES section for CALLFLOW properties and create a hash table.
    ${CallFlow},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICallHandlingAssociation[]]
    # .
    # To construct, see NOTES section for CALLHANDLINGASSOCIATION properties and create a hash table.
    ${CallHandlingAssociation},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IPrompt[]]
    # .
    # To construct, see NOTES section for DEFAULTCALLFLOWGREETING properties and create a hash table.
    ${DefaultCallFlowGreeting},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${DefaultCallFlowId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${DefaultCallFlowName},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${DialByNameResourceId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # .
    ${ExclusionScopeGroupDialScopeGroupId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${ExclusionScopeType},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # .
    ${GreetingsSettingAuthorizedUser},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # .
    ${InclusionScopeGroupDialScopeGroupId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${InclusionScopeType},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${LanguageId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${MenuDialByNameEnabled},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${MenuDirectorySearchMethod},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${MenuName},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IMenuOption[]]
    # .
    # To construct, see NOTES section for MENUOPTION properties and create a hash table.
    ${MenuOption},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IPrompt[]]
    # .
    # To construct, see NOTES section for MENUPROMPT properties and create a hash table.
    ${MenuPrompt},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${OperatorEnableTranscription},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${OperatorId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${OperatorSharedVoicemailEnableTranscription},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${OperatorSharedVoicemailId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${OperatorSharedVoicemailType},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${OperatorType},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISchedule[]]
    # .
    # To construct, see NOTES section for SCHEDULE properties and create a hash table.
    ${Schedule},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${TenantId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${TimeZoneId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # .
    ${VoiceId},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${VoiceResponseEnabled},

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
            Set = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsAutoAttendant_Set';
            SetExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsAutoAttendant_SetExpanded';
            SetViaIdentity = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsAutoAttendant_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Set-CsAutoAttendant_SetViaIdentityExpanded';
        }
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
# MIIjcAYJKoZIhvcNAQcCoIIjYTCCI10CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBm1L8UErjVFc0L
# yePTHkOh3lmvcakbwcCOFJXFSRCy1aCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# wb1tbWrJUnMTDXpQzTGCFVMwghVPAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIH0w7Wdjowf9ZzdXQEWvlUQDD7vW
# U3krObr/bz88BmNaMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAJnBUxhw
# x7ERfsV9XYUI9WU7K5jpjNHjN8eOYjRdGLk2pQKjewjEeXgtysxuv67Dcg6EwL1v
# lu1ALe/M5ateyioh2jt6j8mKUYInUrz7GMmC1eYTrggV1Om+NmvPOk5ReTTTKKHo
# guE9Z0QR5BXV6TSpKutnLhiT3918knJqjQfN7UOiFrqNqOVwRcRG9FKTw3s8zA0p
# rbVR2kCwElTSrEi5EQwXP0OGY00j2sSL/JecJLCxxPHo9tAG67kpSun37Agt6rD1
# xzliVMXv2Gg3UmUs0QSJUNtsDi/olnHl2FdCK1slD2n7oq+YyQbvzD+GDHAv94qC
# h2RTsfSmck9oebehghLlMIIS4QYKKwYBBAGCNwMDATGCEtEwghLNBgkqhkiG9w0B
# BwKgghK+MIISugIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBUQYLKoZIhvcNAQkQAQSg
# ggFABIIBPDCCATgCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgO4Ye
# LH4H03mOdBZgkbIk2q5nCamPbwHyS+PcsqxyTlsCBmFDqUd37RgTMjAyMTA5MzAx
# NjMyNTkuNTY1WjAEgAIB9KCB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0
# aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046M0JCRC1FMzM4LUU5QTExJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wggg48MIIE8TCCA9mg
# AwIBAgITMwAAAU9kLnX2egNagwAAAAABTzANBgkqhkiG9w0BAQsFADB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMDExMTIxODI2MDJaFw0yMjAyMTEx
# ODI2MDJaMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjozQkJELUUzMzgtRTlBMTElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAKMUd7Vk9mgo7Bvk/cTv+0gdJq+K2F8x/ywmh3IltQsgeWtSdrFJ4LE3IUoH
# ektxY53JAPIkJNFupGqYLRtJ4PUN9PU8i/r8DocOxnc2DvPdCUOD8MSVeV9BpK+n
# fZ19P1TvjY7R+8kLuwBMR6cFrPt+FNdCKXCO4dV9TlaptLEedNyIVamYBslz0E+4
# /7ulhcxSlLdrAYlmT1wEV9Vz0LWsDlypPgK4gQxLDgdRCwibgQVsNMwFI9H+GktJ
# WCgje6nVNM6nvqj2Aa0v6dBxV9VM0TZ9+zOkfEQID8WztevBxsQV7TTZEe9rRYE9
# uKRlpl4dAQcOLYRn0yWyPK0/av0CAwEAAaOCARswggEXMB0GA1UdDgQWBBSOje7X
# FgYQflWTvzXCZPExX/KgoDAfBgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVt
# VTBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
# L2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYB
# BQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpL2NlcnRzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8E
# AjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQA8MeSr
# HFzkMg56ytF7PJuigV+XhDEaY0JrpG7b6+AvbsLrBkHRHnyQGeJaXkCaMui8mUq8
# l4kk9p5iFTvBUd5fDHB/6RGRBi4YUXadGQg/x2XahvoB3jJvTB4P2jpfmFJvpJpA
# LIP9iOhKUPkCADgoKeybYC69rvMGbkQiHp+J7ks6ozeueb84CXZQ6c1t98XmyDq9
# oXLjw8HUUwlRniCvdPbLyQReawT3v7ZmOMlRtwTWv6+z5vW/rFnB5/V1y0FNRaRb
# W/9r/taoxe00iOs4eMLCyweHAB+6UXuazgU7W/89g866wcbipsq8xGHEDgyehgPu
# HWHJJwp3G9Ss3eW5MIIGcTCCBFmgAwIBAgIKYQmBKgAAAAAAAjANBgkqhkiG9w0B
# AQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAG
# A1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAw
# HhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0NjU1WjB8MQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1T
# dGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKkd
# Dbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX77XxoSyxfxcPlYcJ2tz5mK1vwFVMn
# BDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM1024OAizQt2TrNZzMFcmgqNFDdDq
# 9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHPk0ySwcSmXdFhE24oxhr5hoC732H8
# RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v
# 0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN
# /LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0G
# A1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMA
# dQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAW
# gBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8v
# Y3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRf
# MjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRw
# Oi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEw
# LTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYI
# KwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMv
# ZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AUABvAGwA
# aQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIB
# AAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+zwXiqf76V20ZMLPCxWbJat/15/B4
# vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3Tv
# QhDIr79/xn/yN31aPxzymXlKkVIArzgPF/UveYFl2am1a+THzvbKegBvSzBEJCI8
# z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4zu2JfmttXQOnxzplmkIz/amJ/3cVK
# C5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHimbdLhnPkd/DjYlPTGpQqWhqS9nhqu
# BEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF
# 0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHhAN/nMQekkzr3ZUd46PioSKv33nJ+
# YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A+xuJKlQ5slvayA1VmXqHczsI5pgt
# 6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdCosnPGUFN4Ib5KpqjEWYw07t0Mkvf
# Y3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42neV8HR3jDA/czmTfsNv11P6Z0eGTgv
# vM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nfj950iEkSoYICzjCCAjcCAQEwgfih
# gdCkgc0wgcoxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAj
# BgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRo
# YWxlcyBUU1MgRVNOOjNCQkQtRTMzOC1FOUExMSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQDoIgziqtIHOpyM14dS
# d14peCqr6KCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0G
# CSqGSIb3DQEBBQUAAgUA5P/zxDAiGA8yMDIxMDkzMDE2Mjg1MloYDzIwMjExMDAx
# MTYyODUyWjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDk//PEAgEAMAoCAQACAhrs
# AgH/MAcCAQACAhE1MAoCBQDlAUVEAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisG
# AQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQAD
# gYEANSPZL/WlxaTbP7+Xlc3xusxHSY8NtZJTlLpsSKAX5JYAaQAwIJQWW3MTo2PA
# eSBUJ7XBR5j698j9gQk1AcdkDTtNki99NZiEY9Jm5+5M4j/Dh52BXCEnJ/GItWue
# 3lf+NoynWr3B+CFP3GD+P1Z5j6zjYwwieKGBJPjmppCi2V8xggMNMIIDCQIBATCB
# kzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAU9kLnX2egNagwAA
# AAABTzANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJ
# EAEEMC8GCSqGSIb3DQEJBDEiBCA5e9D22SHeAhnJ5g8sJsRR16lzwZNLjZFGS9In
# IkXtGDCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIABnJhD2glikwMZyIW0Y
# cnpDz6r4eW0wjRDFxsEAtTcCMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTACEzMAAAFPZC519noDWoMAAAAAAU8wIgQg/FOdPPHAbQWw+1S8USDw
# at1Khdt4LXqDa8njJURF+JkwDQYJKoZIhvcNAQELBQAEggEAg+62QRwdXJtdh/HC
# 6uP9URctRTu5As/IatbA1hK0z3xhRFzobqu4V5ekWEYVivnQQxgTHidug2Jl96/D
# MKFFpzjO9JPNOl9UhXONr5PYWjBgDYY6VaMp2Jx5H/tPudTvWXRRRzrfSAjPsFQc
# DNRdIovhMQ3ye4UQZhrUE0XBZz1XNbWqwJ204K1eKQkwcdD7oGzaBxsIL6WzjQxW
# 55QyfsiyxZbCQGgREpd4+hdQ5hcJkw2hBAhorbO8CmZS3z5f/ewK0hASM95STcmV
# 2oCC+vK9rmFvD7lzIp6RJ+h3sPev1rdweeL/7WS9CsqFa/PZrJbHV2Kylq1RAMGy
# xK4L0g==
# SIG # End signature block
