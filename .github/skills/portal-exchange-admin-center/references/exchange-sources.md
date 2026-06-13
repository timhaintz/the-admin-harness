# Exchange Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Exchange Admin Center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: Exchange Admin Center (EAC)
primaryURL: https://admin.cloud.microsoft/exchange#/homepage
secondaryURLs:
  - https://admin.exchange.microsoft.com
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| EAC overview | EAC is the modern web console for Exchange Online and opens at `https://admin.cloud.microsoft/exchange#/homepage`. RBAC determines visible features. | [Exchange admin center in Exchange Online](https://learn.microsoft.com/en-us/exchange/exchange-admin-center) |
| Recipients | Exchange Online recipients include user mailboxes, shared mailboxes, mail contacts, mail users, room/equipment mailboxes, distribution groups, mail-enabled security groups, dynamic distribution groups, Microsoft 365 groups, and public folders. | [Recipients in Exchange Online](https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/recipients-in-exchange-online) |
| Permissions and role groups | Exchange Online uses RBAC. Users can be granted Exchange-only administrative rights by adding them to role groups without granting broader Microsoft 365 roles. | [Permissions in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/permissions-exo) |
| Role group management | Role groups are managed in EAC at Permissions > Admin roles or `https://admin.exchange.microsoft.com/#/adminRoles`; Role Management is required to create or modify role groups. | [Manage role groups in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/role-groups) |
| Exchange Administrator role | Exchange Administrator can manage email and mailboxes, mailbox permissions, shared mailboxes, anti-spam/malware filters, and Microsoft 365 groups; large organizations may use Exchange role groups for narrower delegation. | [Exchange Administrator role](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-exchange-online-admin-role) |
| Mail flow basics | Microsoft 365/Office 365 mail flow relies on domains and DNS records such as MX, SPF, DKIM, and DMARC; multiple SPF records invalidate SPF and can cause mail flow problems. | [Mail flow best practices](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/mail-flow-best-practices) |
| Connectors | Connectors customize mail flow for on-premises servers, partners, devices, applications, relay, TLS, or hybrid scenarios. Most cloud-only organizations do not need connectors for regular mail flow. | [Configure mail flow using connectors](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow) |
| Accepted domains | Accepted domains are configured after adding a domain in Microsoft 365 Admin Center. Domain type can be Authoritative or Internal Relay; Internal Relay needs connector planning for unknown recipients. | [Manage accepted domains](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) |
| Mail flow rules | Mail flow rules consist of conditions, exceptions, actions, and properties. Rules without conditions can apply to all messages and cause unintended consequences. Rule changes can take up to 30 minutes and previous history is not maintained. | [Mail flow rules](https://learn.microsoft.com/en-us/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) |
| Migration | Migration options include cutover, staged, hybrid, PST import, IMAP, user self-import, and partner-assisted migration. Migration choice depends on source environment and scale. | [Mailbox migration options](https://learn.microsoft.com/en-us/exchange/mailbox-migration/mailbox-migration) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| User account creation, basic license assignment, domains before Exchange accepted-domain configuration | `portal-microsoft-365-admin-center` skill. |
| Microsoft Entra roles, app registration, identity, Conditional Access, sign-in logs | `portal-microsoft-entra-admin-center` skill. |
| Purview retention, eDiscovery, audit, DLM diagnostics, inactive mailboxes, or retention conflicts | Future `portal-microsoft-purview` skill; route DLM diagnostics to [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) where relevant. |
| Microsoft Defender for Office 365 security incidents, attack simulation, allow/block lists, anti-phishing, or Defender portal policy | Future `portal-microsoft-365-defender` skill where relevant. |
| SharePoint, Teams, or OneDrive workload-specific collaboration settings | Future SharePoint or Teams portal skills. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Purview DLM and Exchange retention diagnostics | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) | Route DLM-specific diagnostics upstream when relevant. Keep this EAC skill focused on portal navigation, Exchange Online boundaries, and safety. |
| Microsoft 365 admin hub operations | `portal-microsoft-365-admin-center` local skill | Route user/license/domain setup and hub-level role guidance back to the Microsoft 365 Admin Center skill. |
| Microsoft Graph sample discovery for Exchange | [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Treat as project-specific sample lead only; verify any Graph sample against official Graph and Exchange docs before reuse. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Exchange admin center in Exchange Online](https://learn.microsoft.com/en-us/exchange/exchange-admin-center)
- [Recipients in Exchange Online](https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/recipients-in-exchange-online)
- [Permissions in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/permissions-exo)
- [Manage role groups in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/role-groups)
- [Exchange Administrator role](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-exchange-online-admin-role)
- [Mail flow best practices](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/mail-flow-best-practices)
- [Configure mail flow using connectors](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow)
- [Manage accepted domains](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)
- [Mail flow rules](https://learn.microsoft.com/en-us/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)
- [Mailbox migration options](https://learn.microsoft.com/en-us/exchange/mailbox-migration/mailbox-migration)
- [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)