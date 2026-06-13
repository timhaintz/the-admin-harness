# Microsoft 365 Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Microsoft 365 Admin Center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: Microsoft 365 Admin Center
primaryURL: https://admin.cloud.microsoft
secondaryURLs:
  - https://aka.ms/admincenter
  - https://admin.microsoft.com/Partner/BeginClientSession.aspx?CTID={tenant_id}&CSDEST=o365admincenter
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Admin center overview | Microsoft 365 Admin Center is the central entry point for users, billing, service health, reports, roles, resources, settings, setup, health, and specialist admin centers such as Exchange, Teams, SharePoint, Security, Compliance, and Entra. | [Microsoft 365 admin center overview](https://learn.microsoft.com/en-us/microsoft-365/admin/admin-overview/admin-center-overview) |
| Admin roles | Microsoft recommends roles with the fewest permissions, limiting Global Administrators, requiring MFA for administrators, and using role-specific administrators for common tasks. | [About administrator roles in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-admin-roles) |
| Users | Adding users requires License Administrator or User Administrator for user/license operations; the admin center supports individual and bulk users plus custom user views. | [Add users and assign licenses in Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/add-users) |
| Licenses | Licenses can be assigned from Billing > Licenses or Users > Active users; some errors include no licenses, conflicting services, invalid usage location, and group-based assignment issues. | [Assign or unassign licenses for users](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/assign-licenses-to-users) |
| Groups | Microsoft 365 groups are managed from Teams & groups > Active teams & groups; group setup includes owners, members, email address, privacy, and optional Teams creation. | [Create a group in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/create-groups/create-groups) |
| Domains | Adding or changing domains requires Domain Name Administrator. Domain Connect can verify ownership and add DNS records automatically; incorrect manual DNS can cause service outages. | [Add a custom domain to Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/setup/add-domain) |
| Health dashboard | The Health dashboard shows service health, usage, license utilization, app update status, billing alerts, and recommended actions. Global Reader can access it. | [Microsoft 365 Health dashboard overview](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/health-dashboard-overview) |
| Message center | Message center tracks upcoming changes, major updates, feature release status, service usage, relevance, act-by dates, sharing, Planner sync, Graph service communications API, and MCP release communications options. | [Microsoft 365 Message center](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/message-center) |
| Integrated apps | Integrated apps portal deploys and manages apps, agents, and add-ins from Settings > Integrated apps. It is available to worldwide customers and not available in sovereign/government clouds. | [Integrated apps portal](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/test-and-deploy-microsoft-365-apps) |
| Centralized deployment of add-ins | Office Add-in centralized deployment has Microsoft 365, Exchange Online, admin role, user/group assignment, and compatibility requirements. | [Centralized deployment of Office Add-ins](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/centralized-deployment-of-add-ins) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| Exchange mail flow, recipients, mailboxes, transport, or EAC-specific roles | Future `portal-exchange-admin-center` skill. |
| Teams policies, meetings, voice, devices, apps, or Teams admin center tasks | Future `portal-microsoft-teams-admin-center` skill. |
| SharePoint sites, sharing, OneDrive, migration, or SharePoint admin tasks | Future `portal-sharepoint-admin-center` skill. |
| Purview compliance, DLM, retention, eDiscovery, audit, or information protection | Future `portal-microsoft-purview` skill; route DLM diagnostics to [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) where relevant. |
| Defender security incidents, alerts, Secure Score, attack simulation, or Defender portal | Future `portal-microsoft-365-defender` skill. |
| Power Platform environments, Power Apps, Power Automate, Dataverse, or DLP | Future `portal-power-platform-admin-center` skill; check [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills) and [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills). |
| Entra identity, Conditional Access, app registrations, role assignments, or sign-in logs | `portal-microsoft-entra-admin-center` skill. |
| Intune device, app, enrollment, and compliance operations | `portal-microsoft-intune-admin-center` skill. |
| Azure resources, subscriptions, quotas, cost, diagnostics, RBAC, or deployment | Future `portal-microsoft-azure-portal` skill and [microsoft/azure-skills](https://github.com/microsoft/azure-skills). |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Microsoft 365 workplace data and productivity workflows | [microsoft/work-iq](https://github.com/microsoft/work-iq) | Relevant when the user asks about Microsoft 365 data through WorkIQ or M365 agent tooling. Not a substitute for tenant admin center guidance. |
| Microsoft 365 Agents SDK implementation | [microsoft/skills](https://github.com/microsoft/skills) M365 Agents SDK skills | Route SDK implementation questions to upstream skills when installed. Keep this portal skill focused on tenant admin center navigation and safety. |
| Power Platform and Dataverse operations | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills) | Route product-specific operations to upstream or future portal skills where relevant. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft 365 admin center overview](https://learn.microsoft.com/en-us/microsoft-365/admin/admin-overview/admin-center-overview)
- [About administrator roles in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-admin-roles)
- [Add users and assign licenses in Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/add-users)
- [Assign or unassign licenses for users](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/assign-licenses-to-users)
- [Create a group in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/create-groups/create-groups)
- [Add a custom domain to Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/setup/add-domain)
- [Microsoft 365 Health dashboard overview](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/health-dashboard-overview)
- [Microsoft 365 Message center](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/message-center)
- [Integrated apps portal](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/test-and-deploy-microsoft-365-apps)
- [Centralized deployment of Office Add-ins](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/centralized-deployment-of-add-ins)
- [microsoft/work-iq](https://github.com/microsoft/work-iq)
- [microsoft/skills](https://github.com/microsoft/skills)
- [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills)
- [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)