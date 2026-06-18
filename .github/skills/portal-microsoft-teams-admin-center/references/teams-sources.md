# Microsoft Teams Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Microsoft Teams Admin Center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: Microsoft Teams Admin Center
primaryURL: https://admin.teams.microsoft.com
secondaryURLs:
  - https://aka.ms/teamsadmincenter
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Teams admin roadmap | Teams provides tools for managing and monitoring the Teams service, users, policies, call quality, reports, meetings, voice, and apps. | [Manage and monitor Teams](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-overview) |
| Teams admin center teams management | Teams management tools are under Teams > Manage teams; admins can view teams, owners, members, guests, privacy, sensitivity, archived status, deleted teams, and expiration state. | [Manage teams in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-in-modern-portal) |
| Admin roles | Teams roles include Teams Administrator, Teams Communications Administrator, support roles, Teams Device Administrator, Teams Reader, and Teams Telephony Administrator. Microsoft recommends least privilege and limiting Global Administrator. | [Use Microsoft Teams administrator roles to manage Teams](https://learn.microsoft.com/en-us/microsoftteams/using-admin-roles) |
| Policy assignment concepts | Teams policies can be assigned directly, by group, by batch, or by policy package. Direct assignments take precedence over group assignments, then global defaults. | [Assign policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/policy-assignment-overview) |
| Policy assignment operations | Teams Admin Center can assign policies to individual users, groups, and batches; group assignments use ranking and are propagated as background operations. | [Assign policies to users and groups](https://learn.microsoft.com/en-us/microsoftteams/assign-policies-users-and-groups) |
| Teams/channel policies | Teams policies control what users can do in teams and channels. Policy changes may take up to 24 hours to take effect. | [Manage channel policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-policies) |
| Meeting and event policies | Meeting and event policies control features available to organizers and participants. Users get global policy unless a custom policy is assigned. | [Manage meeting and event policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/meeting-policies-overview) |
| Messaging policies | Messaging policies control chat and channel messaging features. Some settings affect deletion/editing, read receipts, Giphy, audio messages, reporting, and eDiscovery behavior. | [Manage messaging policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/messaging-policies-in-teams) |
| Apps and agents | Teams Admin Center can manage agents and apps, org-wide app settings, app availability, custom apps, user requests, app certification, and support information. | [Manage your apps in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-apps) |
| App permission policies | App permission policies control app availability per user, but app-centric management can replace permission policies. Teams does not support group assignments for app permission policies. | [Manage app permission policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-app-permission-policies) |
| External access | External access includes organization settings and user policies; both must allow access for users to communicate externally. Domain allow/block behavior, unmanaged Teams users, Skype users, and cloud caveats matter. | [Manage external meetings and chat with people and organizations using Microsoft identities](https://learn.microsoft.com/en-us/microsoftteams/manage-external-access) |
| Guest access | Guest access enables collaboration with people outside the organization and depends on Microsoft Entra ID, Microsoft 365 Groups, and SharePoint settings. Guest additions are audited. | [Guest access in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/guest-access) |
| Voice and Teams Phone | Teams calling is managed through Teams Admin Center, PowerShell, and Graph. Teams Phone and PSTN scenarios require licensing and policy planning. | [Teams calling and cloud voice overview](https://learn.microsoft.com/en-us/microsoftteams/cloud-voice-landing-page) |
| Devices | Teams devices are managed under Teams Devices. Admins can view health, update/restart devices, manage tags, and create/assign configuration profiles. | [Manage devices in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/devices/device-management) |
| Analytics and reports | Teams Admin Center reports are under Analytics & reports. Roles and cloud availability vary by report; usage-report privacy settings are controlled from Microsoft 365 admin center. | [Microsoft Teams analytics and reporting](https://learn.microsoft.com/en-us/microsoftteams/teams-analytics-and-reports/teams-reporting-reference) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| User creation, base licensing, Microsoft 365 groups, service health, Message center, usage-report privacy settings | `portal-microsoft-365-admin-center` skill. |
| Microsoft Entra roles, B2B collaboration, Conditional Access, identity governance, guest access reviews, sign-in logs, app registrations | `portal-microsoft-entra-admin-center` skill. |
| Teams retention, eDiscovery, audit, communication compliance, DLP, inactive users, or Data Lifecycle Management diagnostics | Future `portal-microsoft-purview` skill; route DLM diagnostics to [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) where relevant. |
| Teams app, bot, Copilot Studio, and Microsoft 365 Agents Toolkit development | Upstream Microsoft developer skills and official product docs; this skill stays focused on tenant admin policy and portal routing. |
| Defender security operations for Teams messages, malicious-message reporting, or tenant allow/block lists managed in Defender | Future `portal-microsoft-365-defender` skill where relevant. |
| Teams Rooms Pro Management | Teams Rooms Pro Management Portal and official Teams Rooms docs when device management exceeds Teams Admin Center scope. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Microsoft 365 workplace data and Teams channel/user content questions | [microsoft/work-iq](https://github.com/microsoft/work-iq) | Route user/workplace-data questions upstream when relevant. Keep this Teams Admin Center skill focused on admin portal navigation, policy boundaries, and safety. |
| Teams app or agent development | [microsoft/skills](https://github.com/microsoft/skills) and Microsoft 365 Agents Toolkit skills | Route build/deploy/app package workflows upstream or to official developer docs. Keep tenant app governance and app availability in this skill. |
| Purview DLM and Teams retention diagnostics | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) | Route DLM-specific diagnostics upstream when relevant. |
| Microsoft Graph sample discovery for Teams | [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Treat as project-specific sample lead only; verify any Graph sample against official Graph and Teams docs before reuse. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Manage and monitor Teams](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-overview)
- [Manage teams in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-in-modern-portal)
- [Use Microsoft Teams administrator roles to manage Teams](https://learn.microsoft.com/en-us/microsoftteams/using-admin-roles)
- [Assign policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/policy-assignment-overview)
- [Assign policies to users and groups](https://learn.microsoft.com/en-us/microsoftteams/assign-policies-users-and-groups)
- [Manage channel policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-policies)
- [Manage meeting and event policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/meeting-policies-overview)
- [Manage messaging policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/messaging-policies-in-teams)
- [Manage your apps in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-apps)
- [Manage app permission policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-app-permission-policies)
- [Manage external meetings and chat with people and organizations using Microsoft identities](https://learn.microsoft.com/en-us/microsoftteams/manage-external-access)
- [Guest access in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/guest-access)
- [Teams calling and cloud voice overview](https://learn.microsoft.com/en-us/microsoftteams/cloud-voice-landing-page)
- [Manage devices in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/devices/device-management)
- [Microsoft Teams analytics and reporting](https://learn.microsoft.com/en-us/microsoftteams/teams-analytics-and-reports/teams-reporting-reference)
- [microsoft/work-iq](https://github.com/microsoft/work-iq)
- [microsoft/skills](https://github.com/microsoft/skills)
- [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)