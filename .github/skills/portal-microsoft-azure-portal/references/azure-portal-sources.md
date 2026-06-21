# Microsoft Azure Portal Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft Azure skill overlap for the Microsoft Azure Portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Azure Admin Portals
portalName: Microsoft Azure Portal
primaryURL: https://portal.azure.com
secondaryURLs:
  - https://aka.ms/AzPortal
  - https://portal.azure.com/{tenant_id}/
shortURL: none
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Azure Portal overview | Azure Portal is a web-based unified console for creating, managing, monitoring, and navigating Azure resources through global search, portal menu, service menus, Cloud Shell, notifications, support, account controls, and dashboards. | [What is the Azure portal?](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-overview) |
| Azure Resource Manager | Azure Resource Manager is the deployment and management layer for Azure resources and supports access control, locks, tags, scopes, templates, resource groups, resiliency, and consistent API behavior across portal, CLI, PowerShell, REST, and SDKs. | [What is Azure Resource Manager?](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview) |
| Resource groups | Resource groups hold related resources for an Azure solution, support deployments, policy, diagnostics, locks, tags, access control, moves, and deletion; deleting a resource group deletes its resources. | [Manage resource groups in the Azure portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal) |
| Azure RBAC | Azure RBAC assigns role definitions to users, groups, service principals, or managed identities at management group, subscription, resource group, or resource scopes. | [What is Azure RBAC?](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview) |
| Azure RBAC best practices | Microsoft recommends least privilege, limited subscription owners, constrained privileged administrator assignments, PIM, group-based assignments, unique role IDs in automation, and avoiding wildcard custom-role permissions. | [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices) |
| Azure role assignment portal path | Azure role assignment through the portal uses Access control (IAM), role assignments, scope selection, role selection, members, optional conditions, assignment type, and review. | [Assign Azure roles using the Azure portal](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) |
| Azure Policy | Azure Policy evaluates Azure resources and actions against policy definitions or initiatives assigned to supported scopes, with effects such as audit, deny, modify, deployIfNotExists, and remediation. | [Overview of Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/overview) |
| Azure Monitor | Azure Monitor collects, analyzes, visualizes, and acts on telemetry from Azure and hybrid environments, including metrics, logs, traces, alerts, workbooks, Log Analytics, Application Insights, autoscale, and resource monitoring. | [Azure Monitor overview](https://learn.microsoft.com/en-us/azure/azure-monitor/fundamentals/overview) |
| Azure Service Health | Azure Service Health combines Azure status, personalized Service Health, and Resource Health for service incidents, planned maintenance, health advisories, individual resource health, and alerts. | [What is Azure Service Health?](https://learn.microsoft.com/en-us/azure/service-health/overview) |
| Azure Cloud Shell | Azure Cloud Shell is an authenticated, browser-accessible Bash or PowerShell terminal available from Azure Portal and shell.azure.com; storage costs apply for the mounted Azure Files share. | [What is Azure Cloud Shell?](https://learn.microsoft.com/en-us/azure/cloud-shell/overview) |
| Cost Analysis | Cost Analysis provides interactive cost views, smart/custom views, trends, top contributors, budgets, forecasts, downloads, and exports, with access and billing-scope prerequisites. | [Start using Cost Analysis](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/quick-acm-cost-analysis) |
| Quotas and limits | Azure subscription and service limits vary by service, region, subscription offer, and whether a limit is adjustable; quota increases require appropriate support paths and aren't available for all offer types. | [Azure subscription and service limits](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits) |

## Specialist Routing

| Task area | Route |
| --- | --- |
| Azure resource lookup, diagnostics, RBAC, policy, cost, quota, compliance, deployment, KQL, storage, messaging, and operational workflows | `azure-admin-safe-operations`, Azure MCP, and [microsoft/azure-skills](https://github.com/microsoft/azure-skills). |
| Azure skill contribution, Azure skill review, Azure plugin internals, Azure skill eval quality, token optimization, and sovereign cloud skill patterns | [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure). |
| Microsoft Entra tenant settings, app registrations, Conditional Access, PIM, identity governance, identity protection, and Microsoft Entra roles | `portal-microsoft-entra-admin-center`. |
| Microsoft 365 user/license/billing hub work, Message center, Microsoft 365 service health, and broad tenant support | `portal-microsoft-365-admin-center`. |
| Defender XDR security operations, Defender for Endpoint, Defender for Identity, Defender for Cloud Apps, and Microsoft 365 security incidents | `portal-microsoft-365-defender` when Defender portal is the controlling surface. |
| Purview compliance, audit, retention, eDiscovery, information protection, and data governance | `portal-microsoft-purview` when Purview is the controlling surface. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Azure control plane and resource operations | [microsoft/azure-skills](https://github.com/microsoft/azure-skills) | Route resource lookup, RBAC, diagnostics, compliance, cost, quotas, KQL, storage, messaging, deployment, and Azure MCP workflows upstream where available. Keep local skill focused on portal navigation, source provenance, tenant/cloud routing, and safety. |
| Azure MCP read-only and operational tooling | [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/) | Prefer read-only Azure MCP inspection before planning changes. Do not mutate from this portal skill. |
| Azure-safe planning wrapper | `azure-admin-safe-operations` | Use the local safety skill for Azure administrative planning, risk classification, read-only checks, approval boundaries, validation, and rollback. |
| Azure skill contribution and quality patterns | [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure) | Route upstream skill contributions, skill review, and Azure plugin pattern questions there where applicable. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [What is the Azure portal?](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-overview)
- [What is Azure Resource Manager?](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)
- [Manage resource groups in the Azure portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)
- [What is Azure RBAC?](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)
- [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices)
- [Assign Azure roles using the Azure portal](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal)
- [Overview of Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/overview)
- [Azure Monitor overview](https://learn.microsoft.com/en-us/azure/azure-monitor/fundamentals/overview)
- [What is Azure Service Health?](https://learn.microsoft.com/en-us/azure/service-health/overview)
- [What is Azure Cloud Shell?](https://learn.microsoft.com/en-us/azure/cloud-shell/overview)
- [Start using Cost Analysis](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/quick-acm-cost-analysis)
- [Azure subscription and service limits](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)