# Power Platform Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Power Platform admin center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: Power Platform admin center
primaryURL: https://admin.powerplatform.microsoft.com
secondaryURLs:
  - https://aka.ms/ppac
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Admin center overview | Power Platform admin center is a unified portal for administrators to manage environments and settings for Power Apps, Power Automate, Power Pages, Copilot Studio, and some Dynamics 365 apps. | [Overview of the Power Platform admin center](https://learn.microsoft.com/en-us/power-platform/admin/admin-documentation) |
| Environment overview | Environments are containers for apps, flows, data, chatbots, gateways, connections, and Dataverse databases, scoped to a Microsoft Entra tenant and geographic location. | [Power Platform environments overview](https://learn.microsoft.com/en-us/power-platform/admin/environments-overview) |
| Environment creation | Environment creation depends on license, tenant policy, capacity, environment type, region, Dataverse database choice, security group, Dynamics 365 app enablement, and other irreversible choices. | [Create and manage environments](https://learn.microsoft.com/en-us/power-platform/admin/create-environment) |
| Role types | Power Platform uses tenant-level admin roles, environment-level roles, Dataverse security roles, and app-specific roles at different scopes. | [Role-based security roles for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/database-security) |
| Dataverse security roles | Dataverse security roles define table privileges, access levels, app/data permissions, and user/team role assignment inside Dataverse environments. | [Security roles and privileges for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/security-roles-privileges) |
| Data policies | Data policies govern connectors and can affect design-time and runtime behavior for apps, flows, chatbots, connections, actions, triggers, and MCP servers. Enforcement latency can vary. | [Data policies](https://learn.microsoft.com/en-us/power-platform/admin/wp-data-loss-prevention) |
| Connector classification | Connectors can be classified as Business, Non-Business, or Blocked. Some connectors can't be blocked with classic policies; advanced connector policies use a strict allowlist model for certified connectors. | [Connector classification](https://learn.microsoft.com/en-us/power-platform/admin/dlp-connector-classification) |
| Managed Environments | Managed Environments unlock premium governance capabilities such as environment groups, sharing limits, usage insights, data policies, pipelines, solution checker, IP firewall, Lockbox, CMK, extended backup, catalog admin, and VNet support. | [Managed Environments overview](https://learn.microsoft.com/en-us/power-platform/admin/managed-environment-overview) |
| Capacity | Dataverse capacity is reported across database, file, and log storage, with tenant and environment views, add-ons, overage behavior, and blocked operations when over capacity. | [Dataverse capacity-based storage](https://learn.microsoft.com/en-us/power-platform/admin/capacity-storage) |
| Tenant settings | Tenant settings include environment creation controls, Copilot/AI settings, support visibility, capacity summary visibility, licensing summary visibility, Customer Lockbox, and Managed Environment settings. | [Tenant settings](https://learn.microsoft.com/en-us/power-platform/admin/tenant-settings) |
| Governance | Power Platform governance includes environment architecture, security, licensing, DLP, monitoring, audit trail, admin connectors, PowerShell, CoE Starter Kit, and alert/action planning. | [Security and governance considerations](https://learn.microsoft.com/en-us/power-platform/admin/governance-considerations) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| Power Pages site creation, activation, deployment, ALM, pipelines, site settings, web APIs, permissions, server logic | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills). |
| Dataverse environment connection, table metadata, security roles, bulk delete, recycle bin, solutions, queries, org settings | [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills). |
| Copilot Studio agent authoring, test kits, YAML pull/push, agent deployment | Official Copilot Studio skills and docs, including Microsoft-owned Copilot Studio skill repos where available. |
| Power CAT pro-code, canvas app, generative page, and app quality evaluation workflows | [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills). |
| Power Platform Build Tools and Azure DevOps task workflows | [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools). |
| User creation, base license assignment, billing procurement, Message center, service health, broad Microsoft 365 support | `portal-microsoft-365-admin-center` skill. |
| Entra app registrations, Conditional Access, PIM, identity governance, security groups | `portal-microsoft-entra-admin-center` skill. |
| Intune app protection, mobile device policy, device compliance | `portal-microsoft-intune-admin-center` skill. |
| Purview compliance DLP, eDiscovery, retention, audit, sensitivity labels | `portal-microsoft-purview` skill when Purview is the controlling compliance layer. |
| Azure pay-as-you-go, subscriptions, resource groups, networking, Key Vault, Application Insights, private endpoints | `azure-admin-safe-operations` or future Azure Portal skill. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Power Pages and Power Platform build/deploy workflows | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills) | Route product-specific build, deployment, ALM, Power Pages, and PAC workflows upstream. Keep local skill focused on PPAC navigation, sources, and safety. |
| Dataverse administration and security | [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills) | Route Dataverse-specific table, security, solution, query, bulk delete, recycle bin, and org setting operations upstream. |
| Managed app connectors and app creation | [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps) | Route managed app build and connector implementation upstream when relevant. |
| Copilot Studio agent workflows | [microsoft/skills-for-copilot-studio](https://github.com/microsoft/skills-for-copilot-studio) where available | Route agent authoring/test/deploy workflows upstream or to official docs. |
| Power CAT app quality and evaluation workflows | [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills) | Route pro-code, canvas app, generative page, and app quality evaluation workflows upstream when relevant. |
| Power Platform Build Tools workflows | [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools) | Route Azure DevOps task, build-tool, and PAC CLI pipeline diagnostics upstream when relevant. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Overview of the Power Platform admin center](https://learn.microsoft.com/en-us/power-platform/admin/admin-documentation)
- [Power Platform environments overview](https://learn.microsoft.com/en-us/power-platform/admin/environments-overview)
- [Create and manage environments](https://learn.microsoft.com/en-us/power-platform/admin/create-environment)
- [Role-based security roles for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/database-security)
- [Security roles and privileges for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/security-roles-privileges)
- [Data policies](https://learn.microsoft.com/en-us/power-platform/admin/wp-data-loss-prevention)
- [Connector classification](https://learn.microsoft.com/en-us/power-platform/admin/dlp-connector-classification)
- [Managed Environments overview](https://learn.microsoft.com/en-us/power-platform/admin/managed-environment-overview)
- [Dataverse capacity-based storage](https://learn.microsoft.com/en-us/power-platform/admin/capacity-storage)
- [Tenant settings](https://learn.microsoft.com/en-us/power-platform/admin/tenant-settings)
- [Security and governance considerations](https://learn.microsoft.com/en-us/power-platform/admin/governance-considerations)
- [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills)
- [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills)
- [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps)
- [microsoft/skills-for-copilot-studio](https://github.com/microsoft/skills-for-copilot-studio)
- [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills)
- [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)