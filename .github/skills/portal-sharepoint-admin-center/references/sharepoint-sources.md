# SharePoint Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the SharePoint Admin Center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: SharePoint Admin Center
primaryURL: https://admin.microsoft.com/sharepoint
secondaryURLs: none
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Active sites and site management | The Active sites page lets admins view, sort, filter, search, and create SharePoint sites, including communication sites, channel sites, and Microsoft 365 group-connected sites. | [Manage sites in the SharePoint admin center](https://learn.microsoft.com/en-us/sharepoint/manage-sites-in-new-admin-center) |
| SharePoint Administrator role | SharePoint Administrators can access SharePoint Admin Center, create and manage sites, designate site admins, manage sharing, and manage Microsoft 365 groups. Microsoft recommends least privilege and limiting Global Administrator. | [About the SharePoint Administrator role](https://learn.microsoft.com/en-us/sharepoint/sharepoint-admin-role) |
| Site creation | SharePoint Administrators can create team sites, communication sites, and classic sites from Active sites. The primary language cannot be changed after creation. | [Create a site](https://learn.microsoft.com/en-us/sharepoint/create-site-collection) |
| External sharing overview | SharePoint has organization-level and site-level external sharing settings; the most restrictive value applies. SharePoint and OneDrive can integrate with Microsoft Entra B2B. | [Overview of external sharing in SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/external-sharing-overview) |
| Sharing settings | SharePoint and OneDrive sharing levels include Anyone, New and existing guests, Existing guests, and Only people in your organization. Entra external collaboration settings can affect site and file/folder sharing. | [Manage sharing settings for SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/turn-external-sharing-on-or-off) |
| Storage limits | SharePoint storage can be pooled automatically or managed manually. Active sites shows storage, but usage may lag by 24-48 hours. | [Manage site storage limits](https://learn.microsoft.com/en-us/sharepoint/manage-site-collection-storage-limits) |
| Site address changes | Site address changes can set a site read-only, create redirects, affect apps/customizations/workflows/Teams files, and are unsupported for some site types and sovereign clouds. | [Change a site address](https://learn.microsoft.com/en-us/sharepoint/change-site-address) |
| Migration overview | Migration Manager helps migrate content to Microsoft 365; the Migration Administrator role provides limited migration access without full SharePoint Administrator access. | [Migrate to Microsoft 365](https://learn.microsoft.com/en-us/sharepointmigration/migrate-to-sharepoint-online) |
| Migration Manager | Migration Manager is located in SharePoint Admin Center and supports file share migration with agents, tasks, monitoring, and reports. | [Migrate file shares with Migration Manager](https://learn.microsoft.com/en-us/sharepointmigration/mm-get-started) |
| SharePoint Migration Tool | SPMT migrates content from SharePoint Server to Microsoft 365 and supports planning/assessment with SMAT. | [SharePoint Migration Tool](https://learn.microsoft.com/en-us/sharepointmigration/introducing-the-sharepoint-migration-tool) |
| User profiles | SharePoint Admin Center user profile tasks include custom user properties, OneDrive admins, classic audiences, and disabling OneDrive creation for selected users. | [Manage user profiles](https://learn.microsoft.com/en-us/sharepoint/manage-user-profiles) |
| Custom script | SharePoint Admin Center can identify and change custom script settings for sites. Allowing custom script has security implications and site-level changes can reset to blocked after 24 hours. | [Allow or prevent custom scripts](https://learn.microsoft.com/en-us/sharepoint/allow-or-prevent-custom-script) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| User creation, base license assignment, Microsoft 365 groups, service health, Message center, usage reports | `portal-microsoft-365-admin-center` skill. |
| Microsoft Entra roles, B2B collaboration restrictions, Conditional Access, access reviews, app registrations, API consent, sign-in logs | `portal-microsoft-entra-admin-center` skill. |
| Teams-connected site membership/policy behavior, channels, shared channels, Teams files behavior | `portal-microsoft-teams-admin-center` skill when Teams policy or team membership is the controlling layer. |
| Retention labels, sensitivity labels, DLP, audit, eDiscovery, records management, communication compliance, DLM diagnostics | Future `portal-microsoft-purview` skill; route DLM diagnostics to [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) where relevant. |
| SharePoint Embedded containers, container types, storage APIs, and billing | [microsoft/SharePoint-Embedded-Samples](https://github.com/microsoft/SharePoint-Embedded-Samples) or official SharePoint Embedded docs. |
| Power Platform SharePoint connector or managed app integration | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps), or official Power Platform docs. |
| Microsoft 365 workplace-data retrieval across SharePoint, OneDrive, Teams, mail, and calendar | [microsoft/work-iq](https://github.com/microsoft/work-iq) where relevant. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| SharePoint Embedded setup, containers, content operations, and Graph storage APIs | [microsoft/SharePoint-Embedded-Samples](https://github.com/microsoft/SharePoint-Embedded-Samples) | Route SharePoint Embedded developer/container work upstream. Keep this skill focused on SharePoint Admin Center administration and safety. |
| SharePoint connector use from Power Platform or managed apps | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps) | Route app-building and connector implementation workflows upstream. Keep app/API governance and admin center routing here. |
| Microsoft 365 workplace data and SharePoint/OneDrive content questions | [microsoft/work-iq](https://github.com/microsoft/work-iq) | Route user/workplace-data questions upstream when relevant. |
| Purview DLM, retention, and compliance diagnostics | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) | Route DLM-specific diagnostics upstream when relevant. |
| Microsoft Graph sample discovery for SharePoint | [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Treat as project-specific sample lead only; verify any Graph sample against official Graph and SharePoint docs before reuse. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Manage sites in the SharePoint admin center](https://learn.microsoft.com/en-us/sharepoint/manage-sites-in-new-admin-center)
- [About the SharePoint Administrator role](https://learn.microsoft.com/en-us/sharepoint/sharepoint-admin-role)
- [Create a site](https://learn.microsoft.com/en-us/sharepoint/create-site-collection)
- [Overview of external sharing in SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/external-sharing-overview)
- [Manage sharing settings for SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/turn-external-sharing-on-or-off)
- [Manage site storage limits](https://learn.microsoft.com/en-us/sharepoint/manage-site-collection-storage-limits)
- [Change a site address](https://learn.microsoft.com/en-us/sharepoint/change-site-address)
- [Migrate to Microsoft 365](https://learn.microsoft.com/en-us/sharepointmigration/migrate-to-sharepoint-online)
- [Migrate file shares with Migration Manager](https://learn.microsoft.com/en-us/sharepointmigration/mm-get-started)
- [SharePoint Migration Tool](https://learn.microsoft.com/en-us/sharepointmigration/introducing-the-sharepoint-migration-tool)
- [Manage user profiles](https://learn.microsoft.com/en-us/sharepoint/manage-user-profiles)
- [Allow or prevent custom scripts](https://learn.microsoft.com/en-us/sharepoint/allow-or-prevent-custom-script)
- [microsoft/SharePoint-Embedded-Samples](https://github.com/microsoft/SharePoint-Embedded-Samples)
- [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills)
- [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps)
- [microsoft/work-iq](https://github.com/microsoft/work-iq)
- [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)