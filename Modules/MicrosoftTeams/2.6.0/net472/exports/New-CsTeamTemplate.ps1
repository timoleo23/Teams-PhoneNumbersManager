
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

.Description

.Example
PS C:\>  (Get-CsTeamTemplate -OdataId '/api/teamtemplates/v1.0/com.microsoft.teams.template.AdoptOffice365/Public/en-US') > input.json
# open json in your favorite editor, make changes

PS C:\>  New-CsTeamTemplate -Locale en-US -Body (Get-Content '.\input.json' | Out-String)

{
  "id": "061fe692-7da7-4f65-a57b-0472cf0045af",
  "name": "New Template",
  "scope": "Tenant",
  "shortDescription": "New Description",
  "iconUri": "https://statics.teams.cdn.office.net/evergreen-assets/teamtemplates/icons/default_tenant.svg",
  "channelCount": 2,
  "appCount": 2,
  "modifiedOn": "2020-12-10T18:46:52.7231705Z",
  "modifiedBy": "6c4445f6-a23d-473c-951d-7474d289c6b3",
  "locale": "en-US",
  "@odata.id": "/api/teamtemplates/v1.0/061fe692-7da7-4f65-a57b-0472cf0045af/Tenant/en-US"
}
.Example
PS C:\>  New-CsTeamTemplate `
-Locale en-US `
-DisplayName 'New Template' `
-ShortDescription 'New Description' `
-App @{id='feda49f8-b9f2-4985-90f0-dd88a8f80ee1'}, @{id='1d71218a-92ad-4254-be15-c5ab7a3e4423'} `
-Channel @{ `
  displayName="General"; `
  id="General"; `
  isFavoriteByDefault=$true; `
}, `
@{ `
  displayName="test"; `
  id="b82b7d0a-6bc9-4fd8-bf09-d432e4ea0475"; `
  isFavoriteByDefault=$false; `
}


{
  "id": "061fe692-7da7-4f65-a57b-0472cf0045af",
  "name": "New Template",
  "scope": "Tenant",
  "shortDescription": "New Description",
  "iconUri": "https://statics.teams.cdn.office.net/evergreen-assets/teamtemplates/icons/default_tenant.svg",
  "channelCount": 2,
  "appCount": 2,
  "modifiedOn": "2020-12-10T18:46:52.7231705Z",
  "modifiedBy": "6c4445f6-a23d-473c-951d-7474d289c6b3",
  "locale": "en-US",
  "@odata.id": "/api/teamtemplates/v1.0/061fe692-7da7-4f65-a57b-0472cf0045af/Tenant/en-US"
}

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity
.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplate
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateTemplateResponse
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplateErrorResponse
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

APP <ITeamsAppTemplate[]>: Gets or sets the set of applications that should be installed in teams created based on the template.The app catalog is the main directory for information about each app; this set is intended only as a reference.
  [Id <String>]: Gets or sets the app's ID in the global apps catalog.

BODY <ITeamTemplate>: The client input for a request to create a template.         Only admins from Config Api can perform this request.
  DisplayName <String>: Gets or sets the team's DisplayName.
  ShortDescription <String>: Gets or sets template short description.
  [App <ITeamsAppTemplate[]>]: Gets or sets the set of applications that should be installed in teams created based on the template.         The app catalog is the main directory for information about each app; this set is intended only as a reference.
    [Id <String>]: Gets or sets the app's ID in the global apps catalog.
  [Category <String[]>]: Gets or sets list of categories.
  [Channel <IChannelTemplate[]>]: Gets or sets the set of channel templates included in the team template.
    [Description <String>]: Gets or sets channel description as displayed to users.
    [DisplayName <String>]: Gets or sets channel name as displayed to users.
    [Id <String>]: Gets or sets identifier for the channel template.
    [IsFavoriteByDefault <Boolean?>]: Gets or sets a value indicating whether whether new members of the team should automatically favorite the channel,         pinning it for visibility in the UI and using resources to make switching to the channel faster.
    [Tab <IChannelTabTemplate[]>]: Gets or sets collection of tabs that should be added to the channel.
      [Configuration <ITeamsTabConfiguration>]: Represents the configuration of a tab.
        [ContentUrl <String>]: Gets or sets the Url used for rendering tab contents in Teams.
        [EntityId <String>]: Gets or sets the identifier for the entity hosted by the tab provider.
        [RemoveUrl <String>]: Gets or sets the Url that is invoked when the user tries to remove a tab from the FE client.
        [WebsiteUrl <String>]: Gets or sets the Url for showing tab contents outside of Teams.
      [Id <String>]: Gets or sets identifier for the channel tab template.
      [Key <String>]: Gets a unique identifier.
      [MessageId <String>]: Gets or sets id used to identify the chat message associated with the tab.
      [Name <String>]: Gets or sets the tab name displayed to users.
      [SortOrderIndex <String>]: Gets or sets index of the order used for sorting tabs.
      [TeamsAppId <String>]: Gets or sets the app's id in the global apps catalog.
      [WebUrl <String>]: Gets or sets the deep link url of the tab instance.
  [Classification <String>]: Gets or sets the team's classification.         Tenant admins configure AAD with the set of possible values.
  [Description <String>]: Gets or sets the team's Description.
  [DiscoverySetting <ITeamDiscoverySettings>]: Governs discoverability of a team.
    ShowInTeamsSearchAndSuggestion <Boolean>: Gets or sets value indicating if team is visible within search and suggestions in Teams clients.
  [FunSetting <ITeamFunSettings>]: Governs use of fun media like giphy and stickers in the team.
    AllowCustomMeme <Boolean>: Gets or sets a value indicating whether users are allowed to create and post custom meme images in team conversations.
    AllowGiphy <Boolean>: Gets or sets a value indicating whether users can post giphy content in team conversations.
    AllowStickersAndMeme <Boolean>: Gets or sets a value indicating whether users can post stickers and memes in team conversations.
    GiphyContentRating <String>: Gets or sets the rating filter on giphy content.
  [GuestSetting <ITeamGuestSettings>]: Guest role settings for the team.
    AllowCreateUpdateChannel <Boolean>: Gets or sets a value indicating whether guests can create or edit channels in the team.
    AllowDeleteChannel <Boolean>: Gets or sets a value indicating whether guests can delete team channels.
  [Icon <String>]: Gets or sets template icon.
  [IsMembershipLimitedToOwner <Boolean?>]: Gets or sets whether to limit the membership of the team to owners in the AAD group until an owner "activates" the team.
  [MemberSetting <ITeamMemberSettings>]: Member role settings for the team.
    AllowAddRemoveApp <Boolean>: Gets or sets a value indicating whether members can add or remove apps in the team.
    AllowCreatePrivateChannel <Boolean>: Gets or Sets a value indicating whether members can create Private channels.
    AllowCreateUpdateChannel <Boolean>: Gets or sets a value indicating whether members can create or edit channels in the team.
    AllowCreateUpdateRemoveConnector <Boolean>: Gets or sets a value indicating whether members can add, edit, or remove connectors in the team.
    AllowCreateUpdateRemoveTab <Boolean>: Gets or sets a value indicating whether members can add, edit or remove pinned tabs in the team.
    AllowDeleteChannel <Boolean>: Gets or sets a value indicating whether members can delete team channels.
    UploadCustomApp <Boolean>: Gets or sets a value indicating is allowed to upload custom apps.
  [MessagingSetting <ITeamMessagingSettings>]: Governs use of messaging features within the team         These are settings the team owner should be able to modify from UI after team creation.
    AllowChannelMention <Boolean>: Gets or sets a value indicating whether team members can at-mention entire channels in team conversations.
    AllowOwnerDeleteMessage <Boolean>: Gets or sets a value indicating whether team owners can delete anyone's messages in team conversations.
    AllowTeamMention <Boolean>: Gets or sets a value indicating whether team members can at-mention the entire team in team conversations.
    AllowUserDeleteMessage <Boolean>: Gets or sets a value indicating whether team members can delete their own messages in team conversations.
    AllowUserEditMessage <Boolean>: Gets or sets a value indicating whether team members can edit their own messages in team conversations.
  [OwnerUserObjectId <String>]: Gets or sets the AAD user object id of the user who should be set as the owner of the new team.         Only to be used when an application or administrative user is making the request on behalf of the specified user.
  [PublishedBy <String>]: Gets or sets published name.
  [Specialization <String>]: The specialization or use case describing the team.         Used for telemetry/BI, part of the team context exposed to app developers, and for legacy implementations of differentiated features for education.
  [TemplateId <String>]: Gets or sets the id of the base template for the team.         Either a Microsoft base template or a custom template.
  [Uri <String>]: Gets or sets uri to be used for GetTemplate api call.
  [Visibility <String>]: Used to control the scope of users who can view a group/team and its members, and ability to join.

CHANNEL <IChannelTemplate[]>: Gets or sets the set of channel templates included in the team template.
  [Description <String>]: Gets or sets channel description as displayed to users.
  [DisplayName <String>]: Gets or sets channel name as displayed to users.
  [Id <String>]: Gets or sets identifier for the channel template.
  [IsFavoriteByDefault <Boolean?>]: Gets or sets a value indicating whether whether new members of the team should automatically favorite the channel,         pinning it for visibility in the UI and using resources to make switching to the channel faster.
  [Tab <IChannelTabTemplate[]>]: Gets or sets collection of tabs that should be added to the channel.
    [Configuration <ITeamsTabConfiguration>]: Represents the configuration of a tab.
      [ContentUrl <String>]: Gets or sets the Url used for rendering tab contents in Teams.
      [EntityId <String>]: Gets or sets the identifier for the entity hosted by the tab provider.
      [RemoveUrl <String>]: Gets or sets the Url that is invoked when the user tries to remove a tab from the FE client.
      [WebsiteUrl <String>]: Gets or sets the Url for showing tab contents outside of Teams.
    [Id <String>]: Gets or sets identifier for the channel tab template.
    [Key <String>]: Gets a unique identifier.
    [MessageId <String>]: Gets or sets id used to identify the chat message associated with the tab.
    [Name <String>]: Gets or sets the tab name displayed to users.
    [SortOrderIndex <String>]: Gets or sets index of the order used for sorting tabs.
    [TeamsAppId <String>]: Gets or sets the app's id in the global apps catalog.
    [WebUrl <String>]: Gets or sets the deep link url of the tab instance.

DISCOVERYSETTING <ITeamDiscoverySettings>: Governs discoverability of a team.
  ShowInTeamsSearchAndSuggestion <Boolean>: Gets or sets value indicating if team is visible within search and suggestions in Teams clients.

FUNSETTING <ITeamFunSettings>: Governs use of fun media like giphy and stickers in the team.
  AllowCustomMeme <Boolean>: Gets or sets a value indicating whether users are allowed to create and post custom meme images in team conversations.
  AllowGiphy <Boolean>: Gets or sets a value indicating whether users can post giphy content in team conversations.
  AllowStickersAndMeme <Boolean>: Gets or sets a value indicating whether users can post stickers and memes in team conversations.
  GiphyContentRating <String>: Gets or sets the rating filter on giphy content.

GUESTSETTING <ITeamGuestSettings>: Guest role settings for the team.
  AllowCreateUpdateChannel <Boolean>: Gets or sets a value indicating whether guests can create or edit channels in the team.
  AllowDeleteChannel <Boolean>: Gets or sets a value indicating whether guests can delete team channels.

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

MEMBERSETTING <ITeamMemberSettings>: Member role settings for the team.
  AllowAddRemoveApp <Boolean>: Gets or sets a value indicating whether members can add or remove apps in the team.
  AllowCreatePrivateChannel <Boolean>: Gets or Sets a value indicating whether members can create Private channels.
  AllowCreateUpdateChannel <Boolean>: Gets or sets a value indicating whether members can create or edit channels in the team.
  AllowCreateUpdateRemoveConnector <Boolean>: Gets or sets a value indicating whether members can add, edit, or remove connectors in the team.
  AllowCreateUpdateRemoveTab <Boolean>: Gets or sets a value indicating whether members can add, edit or remove pinned tabs in the team.
  AllowDeleteChannel <Boolean>: Gets or sets a value indicating whether members can delete team channels.
  UploadCustomApp <Boolean>: Gets or sets a value indicating is allowed to upload custom apps.

MESSAGINGSETTING <ITeamMessagingSettings>: Governs use of messaging features within the teamThese are settings the team owner should be able to modify from UI after team creation.
  AllowChannelMention <Boolean>: Gets or sets a value indicating whether team members can at-mention entire channels in team conversations.
  AllowOwnerDeleteMessage <Boolean>: Gets or sets a value indicating whether team owners can delete anyone's messages in team conversations.
  AllowTeamMention <Boolean>: Gets or sets a value indicating whether team members can at-mention the entire team in team conversations.
  AllowUserDeleteMessage <Boolean>: Gets or sets a value indicating whether team members can delete their own messages in team conversations.
  AllowUserEditMessage <Boolean>: Gets or sets a value indicating whether team members can edit their own messages in team conversations.
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/new-csteamtemplate
#>
function New-CsTeamTemplate {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateTemplateResponse], [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplateErrorResponse])]
[CmdletBinding(DefaultParameterSetName='NewExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='New', Mandatory)]
    [Parameter(ParameterSetName='NewExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [System.String]
    # .
    ${Locale},

    [Parameter(ParameterSetName='NewViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='NewViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='New', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='NewViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplate]
    # The client input for a request to create a template.
    # Only admins from Config Api can perform this request.
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='NewExpanded', Mandatory)]
    [Parameter(ParameterSetName='NewViaIdentityExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's DisplayName.
    ${DisplayName},

    [Parameter(ParameterSetName='NewExpanded', Mandatory)]
    [Parameter(ParameterSetName='NewViaIdentityExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets template short description.
    ${ShortDescription},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamsAppTemplate[]]
    # Gets or sets the set of applications that should be installed in teams created based on the template.The app catalog is the main directory for information about each app; this set is intended only as a reference.
    # To construct, see NOTES section for APP properties and create a hash table.
    ${App},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets list of categories.
    ${Category},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IChannelTemplate[]]
    # Gets or sets the set of channel templates included in the team template.
    # To construct, see NOTES section for CHANNEL properties and create a hash table.
    ${Channel},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's classification.Tenant admins configure AAD with the set of possible values.
    ${Classification},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's Description.
    ${Description},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamDiscoverySettings]
    # Governs discoverability of a team.
    # To construct, see NOTES section for DISCOVERYSETTING properties and create a hash table.
    ${DiscoverySetting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamFunSettings]
    # Governs use of fun media like giphy and stickers in the team.
    # To construct, see NOTES section for FUNSETTING properties and create a hash table.
    ${FunSetting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamGuestSettings]
    # Guest role settings for the team.
    # To construct, see NOTES section for GUESTSETTING properties and create a hash table.
    ${GuestSetting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets template icon.
    ${Icon},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets whether to limit the membership of the team to owners in the AAD group until an owner "activates" the team.
    ${IsMembershipLimitedToOwner},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamMemberSettings]
    # Member role settings for the team.
    # To construct, see NOTES section for MEMBERSETTING properties and create a hash table.
    ${MemberSetting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamMessagingSettings]
    # Governs use of messaging features within the teamThese are settings the team owner should be able to modify from UI after team creation.
    # To construct, see NOTES section for MESSAGINGSETTING properties and create a hash table.
    ${MessagingSetting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the AAD user object id of the user who should be set as the owner of the new team.Only to be used when an application or administrative user is making the request on behalf of the specified user.
    ${OwnerUserObjectId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets published name.
    ${PublishedBy},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # The specialization or use case describing the team.Used for telemetry/BI, part of the team context exposed to app developers, and for legacy implementations of differentiated features for education.
    ${Specialization},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the id of the base template for the team.Either a Microsoft base template or a custom template.
    ${TemplateId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets uri to be used for GetTemplate api call.
    ${Uri},

    [Parameter(ParameterSetName='NewExpanded')]
    [Parameter(ParameterSetName='NewViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Used to control the scope of users who can view a group/team and its members, and ability to join.
    ${Visibility},

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
            New = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsTeamTemplate_New';
            NewExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsTeamTemplate_NewExpanded';
            NewViaIdentity = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsTeamTemplate_NewViaIdentity';
            NewViaIdentityExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsTeamTemplate_NewViaIdentityExpanded';
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD3h4EQIGzF4RJ+
# qDc1FY7BowOiGD5963qn07YS/AnHWqCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIJfhCM+KVOK45jaPtQINT0rBhGnV
# cy6y6eNxuqaVDobEMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAGQ7K8RS
# 32XAwXjDRar+FMkroVte9kH6Af2sIyEPrOzBktH73wu5AcdnziG6aAclzkPYAi8x
# 2GQ4DoURyxVD8JsfkETsTiJfd1DHBwmdh8s+EMEBLWtdrbzJLAXvjhu/KiLAxXFh
# spsIDYiWrxxAXd6tGV+GZTdUBPhy7eftXxryGiDk1Dm/8DCGezy4qcBeOEPN7PJ6
# bGrn7nUzMT5Co/klaGJXkCKjI0Y11Qve8NWdKOWNkD15NbbkZdZDsrVqDh36mDqB
# ZZYOlCp2z2gMbKlCfa3D/VfHRV5tkXtHWRTTURCUXIzxEKzvb5SmAbED7HFVpgEw
# tBU6L7Nv1VF3vSehghLlMIIS4QYKKwYBBAGCNwMDATGCEtEwghLNBgkqhkiG9w0B
# BwKgghK+MIISugIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBUQYLKoZIhvcNAQkQAQSg
# ggFABIIBPDCCATgCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgRque
# rxY1O7ybolt8Un74v1T8Z9aRr1meFnFbn0z6E44CBmFDm9r1SRgTMjAyMTA5MzAx
# NjMzMDMuOTg2WjAEgAIB9KCB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0
# aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046NDlCQy1FMzdBLTIzM0MxJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wggg48MIIE8TCCA9mg
# AwIBAgITMwAAAUmACEq7CaAzCwAAAAABSTANBgkqhkiG9w0BAQsFADB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMDExMTIxODI1NTdaFw0yMjAyMTEx
# ODI1NTdaMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjo0OUJDLUUzN0EtMjMzQzElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAK8T+4kPhdh22no5Khk+SiUb2ncJZzAuV7VeRAyW4R6M3MhAx5Yyx3xlu6N1
# +Ml9Yb9zdI6ZkHBQBYR9VJ2UJoxrK3yBAeQoWKSgP9tjVDjLtF91ruwInDwJd/nB
# 8urOwYy8qSG0EUY6Go39ipCbmPsHRz2qrXbyLjSWuuyk6bfVV6X5QCqVW3Uvslvk
# wYoxaYRqhCmC8sZCr008EMx2BWObVfAUVVyl4FFZafdVvRQJYDq2pG4Usto6yF5g
# ID+PDrPDf5TAhObcmadBUwiv0cAuC8pja5LuWdIqIRopGNvWgHW/RTSzxY/OSBtW
# mzKuj5SaXa/tWt5qDNDPC9H51a0CAwEAAaOCARswggEXMB0GA1UdDgQWBBRWd5rx
# o++4tLw1NdZPyalz6m8kgTAfBgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVt
# VTBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
# L2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYB
# BQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpL2NlcnRzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8E
# AjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQAQ3ngL
# PiDs4EqpzyLCovM11CPY4JPEqYf6OvcDKn4Bj/WrDh3vsD/hYI/yDw91OhiILjtR
# cLoV3Z6knTs6V6fnR/zysUDPj0fkFXteXA+OLITVlTS8soeIJwHaaJtqW6LtbR22
# DhbhsiqLtSVCSEEsRFLmef7MdhCD+sVBRC+8msqnHY0zQwWC/aGSLgHcmQNR8XCg
# fFhsAAlHVS1dof7Q8bUFbnIvUMuzjnWrsP9Gwcaa/HUzr5EpKveoJSJxt9ARry9o
# /6conRP8Nrm9KqlIqhx8Px3AzdSefS2mgL6UqapAwNuWWCEazs1WGmz73Eb3mztt
# 4IyvcC5Rkb8TpFBpMIIGcTCCBFmgAwIBAgIKYQmBKgAAAAAAAjANBgkqhkiG9w0B
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
# YWxlcyBUU1MgRVNOOjQ5QkMtRTM3QS0yMzNDMSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQA/5bGu5y70ZIibAB0P
# nYFEa6mod6CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0G
# CSqGSIb3DQEBBQUAAgUA5P/mRTAiGA8yMDIxMDkzMDE1MzExN1oYDzIwMjExMDAx
# MTUzMTE3WjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDk/+ZFAgEAMAoCAQACAgqP
# AgH/MAcCAQACAhFiMAoCBQDlATfFAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisG
# AQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQAD
# gYEAdnSXXEot683UbpI1OixWcs6GycrjGAAvq7jfO1xQABQ/p9vtX0fy57wdDAKi
# uMXg+GeXhgm1q/Hx1j/LoMTb9rrz4oYrOd7EuM1GlEwPNDS0C6VY56Cga7ZRjf1+
# eNManlcQgLakeHHIMmTevsiRXHPTMHBjbhHEfvgeT4552xwxggMNMIIDCQIBATCB
# kzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAUmACEq7CaAzCwAA
# AAABSTANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJ
# EAEEMC8GCSqGSIb3DQEJBDEiBCDGpbGlscK1p/xKUmbdiIQ/OjOtLqVw+5JxUE6t
# TK3piTCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EICiV+vxYfXjvzN2GeBB1
# KpzsNAvSxnHQ5cb1rR+56KGyMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTACEzMAAAFJgAhKuwmgMwsAAAAAAUkwIgQgkAetWcAMKoy4Jyq2hSqd
# StDUO9OfXTfYiZmQ7RA0+jgwDQYJKoZIhvcNAQELBQAEggEApP3RnygoRzyTrKuP
# GJNFA5qQrMpXI4QtIO6zPXtY8/9uarRQwCBn8tbc9Rn09Mj4C7uOawvZ5lOOAqvX
# FfecQHgZ6C1E6aaxwTBh9AyAGt3OjRX12RwhV6CnGNLPVTDQF50aJwAtyydl3Gfd
# oG3GpTIE/MHjhIerXZJNtkEb+5V4TgzCE+ky90IE6JmwDgVeXxR61rouhpd3uOcT
# h9MTzgsHIOfZR12MOLRJKFNlhqisCs3FdUaZhsUgUdpvAB5taxv3sUOINekNz0Sd
# xTwQfljYOaCeTav8cWQBiM0ArfY4mpPDWE8hCo3HEQ6Q1sSaAMm2bBkzc8nM/jN4
# nMWUrQ==
# SIG # End signature block
