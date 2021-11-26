
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
PS C:\>  (Get-CsTeamTemplate -OdataId '/api/teamtemplates/v1.0/bfd1ccc8-40f4-4996-833f-461947d23348/Tenant/fr-FR') > input.json
# open json in your favorite editor, make changes

PS C:\>  Update-CsTeamTemplate -OdataId '/api/teamtemplates/v1.0/bfd1ccc8-40f4-4996-833f-461947d23348/Tenant/fr-FR' -Body (Get-Content '.\input.json' | Out-String)

{
  "id": "bfd1ccc8-40f4-4996-833f-461947d23348",
  "name": "Hi Im another powershell-created template",
  "scope": "Tenant",
  "description": "Contoso Pharmaceuticals External Project description 123",
  "shortDescription": "12345678io",
  "iconUri": "https://statics.teams.cdn.office.net/evergreen-assets/teamtemplates/icons/default_tenant.svg",
  "channelCount": 5,
  "appCount": 8,
  "modifiedOn": "2020-12-10T18:50:46.8617235Z",
  "modifiedBy": "6c4445f6-a23d-473c-951d-7474d289c6b3",
  "locale": "fr-FR",
  "@odata.id": "/api/teamtemplates/v1.0/bfd1ccc8-40f4-4996-833f-461947d23348/Tenant/fr-FR"
}
.Example
PS C:\>  Update-CsTeamTemplate  -OdataId '/api/teamtemplates/v1.0/bfd1ccc8-40f4-4996-833f-461947d23348/Tenant/fr-FR' `
-Locale en-US -DisplayName 'New Template' `
-ShortDescription 'New Description' `
-App @{id='feda49f8-b9f2-4985-90f0-dd88a8f80ee1'}, @{id='1d71218a-92ad-4254-be15-c5ab7a3e4423'} `
-Channel @{ `
displayName = "General"; `
id= "General"; `
isFavoriteByDefault= $true `
}, `
@{ `
  displayName= "test"; `
  id= "b82b7d0a-6bc9-4fd8-bf09-d432e4ea0475"; `
  isFavoriteByDefault= $false `
}

{
  "id": "bfd1ccc8-40f4-4996-833f-461947d23348",
  "name": "New Template",
  "scope": "Tenant",
  "shortDescription": "New Description",
  "iconUri": "https://statics.teams.cdn.office.net/evergreen-assets/teamtemplates/icons/default_tenant.svg",
  "channelCount": 2,
  "appCount": 2,
  "modifiedOn": "2020-12-10T18:53:58.5153001Z",
  "modifiedBy": "6c4445f6-a23d-473c-951d-7474d289c6b3",
  "locale": "fr-FR",
  "@odata.id": "/api/teamtemplates/v1.0/bfd1ccc8-40f4-4996-833f-461947d23348/Tenant/fr-FR"
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
https://docs.microsoft.com/en-us/powershell/module/teams/update-csteamtemplate
#>
function Update-CsTeamTemplate {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateTemplateResponse], [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplateErrorResponse])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [System.String]
    # A composite URI of a template.
    ${OdataId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamTemplate]
    # The client input for a request to create a template.
    # Only admins from Config Api can perform this request.
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's DisplayName.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets template short description.
    ${ShortDescription},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamsAppTemplate[]]
    # Gets or sets the set of applications that should be installed in teams created based on the template.The app catalog is the main directory for information about each app; this set is intended only as a reference.
    # To construct, see NOTES section for APP properties and create a hash table.
    ${App},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets list of categories.
    ${Category},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IChannelTemplate[]]
    # Gets or sets the set of channel templates included in the team template.
    # To construct, see NOTES section for CHANNEL properties and create a hash table.
    ${Channel},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's classification.Tenant admins configure AAD with the set of possible values.
    ${Classification},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the team's Description.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamDiscoverySettings]
    # Governs discoverability of a team.
    # To construct, see NOTES section for DISCOVERYSETTING properties and create a hash table.
    ${DiscoverySetting},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamFunSettings]
    # Governs use of fun media like giphy and stickers in the team.
    # To construct, see NOTES section for FUNSETTING properties and create a hash table.
    ${FunSetting},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamGuestSettings]
    # Guest role settings for the team.
    # To construct, see NOTES section for GUESTSETTING properties and create a hash table.
    ${GuestSetting},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets template icon.
    ${Icon},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets whether to limit the membership of the team to owners in the AAD group until an owner "activates" the team.
    ${IsMembershipLimitedToOwner},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamMemberSettings]
    # Member role settings for the team.
    # To construct, see NOTES section for MEMBERSETTING properties and create a hash table.
    ${MemberSetting},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamMessagingSettings]
    # Governs use of messaging features within the teamThese are settings the team owner should be able to modify from UI after team creation.
    # To construct, see NOTES section for MESSAGINGSETTING properties and create a hash table.
    ${MessagingSetting},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the AAD user object id of the user who should be set as the owner of the new team.Only to be used when an application or administrative user is making the request on behalf of the specified user.
    ${OwnerUserObjectId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets published name.
    ${PublishedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # The specialization or use case describing the team.Used for telemetry/BI, part of the team context exposed to app developers, and for legacy implementations of differentiated features for education.
    ${Specialization},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the id of the base template for the team.Either a Microsoft base template or a custom template.
    ${TemplateId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets uri to be used for GetTemplate api call.
    ${Uri},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
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
            Update = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Update-CsTeamTemplate_Update';
            UpdateExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Update-CsTeamTemplate_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Update-CsTeamTemplate_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Update-CsTeamTemplate_UpdateViaIdentityExpanded';
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
# MIIjhgYJKoZIhvcNAQcCoIIjdzCCI3MCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDxCprPgOUsqKJK
# RESepy/m2WHN0J462rajAgm5wRlvxaCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# wb1tbWrJUnMTDXpQzTGCFWkwghVlAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIKXcxHYRCFI9hUHFjcNW3QZQF2ze
# xlHIKL5WrhIS4eXLMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAFTYxV98
# swKcHC0dRrbFtzcXHoTyEXW4xDY/ucA2QvXkh3Y9y1dOy29QWA9k3Dy18qc4bbC6
# 4z4S+oHdtxjRXZGruQn1ihEn6wDLKkBrheFglECRg0H71J/ZKyU7cuF8qfmLR7IP
# L4SmioyZHXrab9bj4Zumt8diEppYxzvp887UwixW54nSQ/PhfzA9wzIJ8L1buOtm
# TbJ9WG5zX1sPMyxRX4bjRv/ICeeUEE5Re/jYBLDAyo45ICuapHk5NnCeQ1eVp6EC
# K0mTl7Z6D2XNMFI4I1xbhC1gOy5I2ufesJD7JstwpkzkuuBKy6sNcoSXQC+GOBuu
# OcziwBTf49a/MHahghL7MIIS9wYKKwYBBAGCNwMDATGCEucwghLjBgkqhkiG9w0B
# BwKgghLUMIIS0AIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBWQYLKoZIhvcNAQkQAQSg
# ggFIBIIBRDCCAUACAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgvOpa
# G0/t9hVZj5ulNVZldsbCzExaB4ZIcyxyvqfB3dUCBmFIuH/a0RgTMjAyMTA5MzAx
# NjMzMDAuMzM1WjAEgAIB9KCB2KSB1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTIt
# RkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaCCDkow
# ggT5MIID4aADAgECAhMzAAABOPOUIdZhvvApAAAAAAE4MA0GCSqGSIb3DQEBCwUA
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTIwMTAxNTE3MjgyMFoX
# DTIyMDExMjE3MjgyMFowgdIxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGlt
# aXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046MkFENC00QjkyLUZBMDExJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQDFufinqV5wgzICAqNsrv4D+92pj7LWmaBciM7B
# ca8MCPLtoo+yn3vwUf5U8eH7diT21zQRPfnnhttLtOs5t6NsAfxtDdQypPuxTv2e
# QAvEqrKSnaVh8j9m+sNUF5yzBvPW//0JlxN2tJqKVs0MiDWVN9IDQsOF5tO3TYn5
# Hl4JmuF9d50JYk/WS3WPLQTnAlSvKpg6FeyuB7AZ1Cx0fZu+nkl9GKn6+DyvBUAn
# vxEdttPnFOh/6gUs4ICCYkbR7bILs8Ai0Sso8xaMzzqmRUpHpq2hUq4Dmgbh3g1a
# S2JTMpPZvKfCVWTHvi67qsXtT7nq50LDCTaac2MP45cOHI8ZAgMBAAGjggEbMIIB
# FzAdBgNVHQ4EFgQU3+qt3OjvrFOxMvs5iMVgwZ5xwLUwHwYDVR0jBBgwFoAU1WM6
# XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5t
# aWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGltU3RhUENBXzIwMTAt
# MDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0w
# MS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG
# 9w0BAQsFAAOCAQEAo3iwSFwLsb8NEpDL0si2jk4jlVlSBLdIEVms0eyv9nNHkyxq
# Jjd5XGb3NmZuD6bi610KLwVxR09JwPqvwWi18c7d0X8jquNd6P+wZs2/uHwewE9a
# YvdJ76Zn7/8hCsWLmuS2rGzotKQI+KuYyFhnqFR8mA3g+C2Qb+bCpKoXTh/vgbwD
# YkfCEPOwsGLgxgFkNPgosn0oA6BZkCZLg7cwBjHOx9uw3RayMyAMyrwHZepA3Mgs
# RLCQA9EkpZd9fvcLoglLkwdZqsYiP4HKAOzmnozbzDnexc9YAo0Cq3tkYFqykb6T
# +3fF9YCbx4PgKe8QpJUzxV9+vYfAb4JSAAKmmjCCBnEwggRZoAMCAQICCmEJgSoA
# AAAAAAIwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRl
# IEF1dGhvcml0eSAyMDEwMB4XDTEwMDcwMTIxMzY1NVoXDTI1MDcwMTIxNDY1NVow
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggEiMA0GCSqGSIb3DQEBAQUA
# A4IBDwAwggEKAoIBAQCpHQ28dxGKOiDs/BOX9fp/aZRrdFQQ1aUKAIKF++18aEss
# X8XD5WHCdrc+Zitb8BVTJwQxH0EbGpUdzgkTjnxhMFmxMEQP8WCIhFRDDNdNuDgI
# s0Ldk6zWczBXJoKjRQ3Q6vVHgc2/JGAyWGBG8lhHhjKEHnRhZ5FfgVSxz5NMksHE
# pl3RYRNuKMYa+YaAu99h/EbBJx0kZxJyGiGKr0tkiVBisV39dx898Fd1rL2KQk1A
# UdEPnAY+Z3/1ZsADlkR+79BL/W7lmsqxqPJ6Kgox8NpOBpG2iAg16HgcsOmZzTzn
# L0S6p/TcZL2kAcEgCZN4zfy8wMlEXV4WnAEFTyJNAgMBAAGjggHmMIIB4jAQBgkr
# BgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU1WM6XIoxkPNDe3xGG8UzaFqFbVUwGQYJ
# KwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQF
# MAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8w
# TTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVj
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBK
# BggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgaAGA1UdIAEB/wSBlTCBkjCBjwYJ
# KwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwA
# ZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBuAHQALiAdMA0G
# CSqGSIb3DQEBCwUAA4ICAQAH5ohRDeLG4Jg/gXEDPZ2joSFvs+umzPUxvs8F4qn+
# +ldtGTCzwsVmyWrf9efweL3HqJ4l4/m87WtUVwgrUYJEEvu5U4zM9GASinbMQEBB
# m9xcF/9c+V4XNZgkVkt070IQyK+/f8Z/8jd9Wj8c8pl5SpFSAK84Dxf1L3mBZdmp
# tWvkx872ynoAb0swRCQiPM/tA6WWj1kpvLb9BOFwnzJKJ/1Vry/+tuWOM7tiX5rb
# V0Dp8c6ZZpCM/2pif93FSguRJuI57BlKcWOdeyFtw5yjojz6f32WapB4pm3S4Zz5
# Hfw42JT0xqUKloakvZ4argRCg7i1gJsiOCC1JeVk7Pf0v35jWSUPei45V3aicaoG
# ig+JFrphpxHLmtgOR5qAxdDNp9DvfYPw4TtxCd9ddJgiCGHasFAeb73x4QDf5zEH
# pJM692VHeOj4qEir995yfmFrb3epgcunCaw5u+zGy9iCtHLNHfS4hQEegPsbiSpU
# ObJb2sgNVZl6h3M7COaYLeqN4DMuEin1wC9UJyH3yKxO2ii4sanblrKnQqLJzxlB
# TeCG+SqaoxFmMNO7dDJL32N79ZmKLxvHIa9Zta7cRDyXUHHXodLFVeNp3lfB0d4w
# wP3M5k37Db9dT+mdHhk4L7zPWAUu7w2gUDXa7wknHNWzfjUeCLraNtvTX4/edIhJ
# EqGCAtQwggI9AgEBMIIBAKGB2KSB1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTIt
# RkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEB
# MAcGBSsOAwIaAxUAQLzrOzbQAqfNqS4hIUsmylnmgfmggYMwgYCkfjB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOT/vNkwIhgP
# MjAyMTA5MzAxMjM0MzNaGA8yMDIxMTAwMTEyMzQzM1owdDA6BgorBgEEAYRZCgQB
# MSwwKjAKAgUA5P+82QIBADAHAgEAAgIF1jAHAgEAAgIRyzAKAgUA5QEOWQIBADA2
# BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIB
# AAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAFzJSQ5wSKkhnfd/PhH7HtrXN8HSdHMP
# PlQHSKuKPAO/1rYpl4tXaJ7kD5jmuMKErfeQPXYKMybFndLfkb7j/P+FuDpZoqEf
# /ma0afl6UlscX8LNbBv8tP3Zw8Adede3K23akMkmqOpfeL4m1EYhHxYUiewmT+Ih
# zJEPKdZiDExiMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAE485Qh1mG+8CkAAAAAATgwDQYJYIZIAWUDBAIBBQCgggFKMBoG
# CSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgHgJepVA3
# zljBTYxllY8M5vKWUcoSbXHuF0NXO6oU/4swgfoGCyqGSIb3DQEJEAIvMYHqMIHn
# MIHkMIG9BCBDQJNK+X9EKpJIYuIspu7uxtLeaOYI6k76K2HtFo+HKDCBmDCBgKR+
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABOPOUIdZhvvApAAAA
# AAE4MCIEIDZP7wg3gJwFMJMwXA2QZisK2UsBM/QV6E65pTIWKw+3MA0GCSqGSIb3
# DQEBCwUABIIBAE7/nYWTKZt1YRHWHqNEVNmO1EdvREEND6sP91hz69B48Jo1s7Jo
# njJiQyDc7WVfRnwrOwUzpNRUBWA9t7zXWwu1s5kqjFi/XaqewoKewPm/Pb3mGTX4
# MrzpNM78w6Z4CuDeu7UNSHevoR+H/Gz3nd+N4wXebYXl5QEKEgcFSpQGxiregKot
# q92Szuz97dd2ksUIfYuprC2uJvUdaMs6cHdSoDkLOjBRjm+9TNMZaw8uNaQwA6Ho
# rn0iUtuGaXeQEIerLe1kNIQybQXVpaV6Od6nHXpP1hdrYeXoAvILa5I5jqOOGwbb
# lnAc/5ld25U9Qv4sG46Re/VX+6r4YSQWj7Y=
# SIG # End signature block
