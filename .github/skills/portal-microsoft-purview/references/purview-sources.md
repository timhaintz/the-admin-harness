# Microsoft Purview Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Microsoft Purview portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Microsoft 365 Admin Portals
portalName: Microsoft Purview
primaryURL: https://purview.microsoft.com/
secondaryURLs:
  - https://purview.microsoft.com/homepage?tid={tenant_id}
note: none
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Product scope | Microsoft Purview includes data security, data governance, and data compliance solutions for governing, protecting, and managing data in the era of AI. | [Learn about Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview) |
| Portal experience | The Microsoft Purview portal is the unified entry point for Purview solutions, settings, global search, solution cards, related portals, roles and scopes, Data Map, Unified Catalog, and Knowledge Center. | [Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-portal) |
| Permissions | Microsoft Purview uses RBAC role groups and roles. Permissions in the Purview portal do not cover all service-specific permissions. Entra roles can take precedence over scoped Purview role groups. | [Permissions in the Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-permissions) |
| Data Lifecycle Management | DLM includes retention policies, retention labels, mailbox archiving, inactive mailboxes, PST import, and guidance to use Microsoft 365 retention instead of older Exchange MRM features when possible. | [Data Lifecycle Management](https://learn.microsoft.com/en-us/purview/data-lifecycle-management) |
| Retention policies | Retention policies can retain, delete, or retain then delete content across Exchange, SharePoint, OneDrive, Microsoft 365 Groups, Teams, Viva Engage, Copilot, AI apps, and other locations. | [Create retention policies](https://learn.microsoft.com/en-us/purview/create-retention-policies) |
| Records management | Records management uses retention labels for records and regulatory records, file plans, event-based retention, disposition review, and proof of deletion. Regulatory records have irreversible restrictions. | [Records management](https://learn.microsoft.com/en-us/purview/records-management) |
| eDiscovery | eDiscovery in the Purview portal supports cases, searches, holds, review sets, exports, premium review features, data sources, long-running processes, and integration with Insider Risk Management. | [eDiscovery](https://learn.microsoft.com/en-us/purview/edisc) |
| Audit | Audit solutions provide standard and premium audit capabilities, audit search, exports, Search-UnifiedAuditLog, Office 365 Management Activity API, retention periods, and audit retention policies. | [Audit solutions](https://learn.microsoft.com/en-us/purview/audit-solutions-overview) |
| Audit search | Audit search jobs run in the portal, have search criteria, job dashboards, export limits, administrative-unit scoping, and search job limits. | [Search the audit log](https://learn.microsoft.com/en-us/purview/audit-new-search) |
| Data Loss Prevention | DLP monitors and protects sensitive data across Microsoft 365 services, endpoints, on-premises repositories, Fabric, Power BI, Copilot, cloud apps, and web traffic. Simulation mode and tuning are recommended before restrictive enforcement. | [Data Loss Prevention](https://learn.microsoft.com/en-us/purview/dlp-learn-about-dlp) |
| Information Protection | Information Protection helps discover, classify, and protect sensitive information with sensitive information types, trainable classifiers, data classification, sensitivity labels, encryption, IRM, DLP, scanner, and Microsoft Information Protection SDK. | [Information Protection](https://learn.microsoft.com/en-us/purview/information-protection) |
| Sensitivity labels | Sensitivity labels classify and protect files, emails, meetings, groups, sites, Teams, Power BI, Fabric, Data Map assets, and AI interactions. Label and policy priority matters. | [Sensitivity labels](https://learn.microsoft.com/en-us/purview/sensitivity-labels) |
| Insider Risk Management | Insider Risk Management detects, investigates, and acts on malicious or inadvertent internal risks with privacy by design, pseudonymization, policies, alerts, cases, and eDiscovery escalation. | [Insider Risk Management](https://learn.microsoft.com/en-us/purview/insider-risk-management) |
| Communication Compliance | Communication Compliance detects, investigates, and remediates policy matches in communications across Teams, Exchange, Copilot, Viva Engage, and third-party sources with reviewer workflows and audit logging. | [Communication Compliance](https://learn.microsoft.com/en-us/purview/communication-compliance) |
| Compliance Manager | Compliance Manager provides assessments, compliance score, controls, regulations, and improvement actions for multicloud compliance management. | [Compliance Manager](https://learn.microsoft.com/en-us/purview/compliance-manager) |
| Data governance | Purview data governance uses Data Map and Unified Catalog for metadata, data products, data quality, roles, federated governance, and access/discovery workflows. Data Map and Unified Catalog permissions do not grant access to underlying data. | [Data governance](https://learn.microsoft.com/en-us/purview/data-governance-overview) |
| Data Map | Data Map stores metadata, scans sources, and has capacity-unit, operations, storage, billing, quota, and Azure portal monitoring implications. | [Data Map](https://learn.microsoft.com/en-us/purview/data-map) |
| Unified Catalog | Unified Catalog includes governance domains, access policies, critical data elements, glossary terms, data products, OKRs, health controls, health actions, and data quality. | [Unified Catalog](https://learn.microsoft.com/en-us/purview/unified-catalog) |
| AI data security and compliance | Purview helps manage AI data security and compliance with DSPM/DSPM for AI, sensitivity labels, DLP, Insider Risk, auditing, Communication Compliance, eDiscovery, DLM, and Compliance Manager controls. | [AI data security and compliance](https://learn.microsoft.com/en-us/purview/ai-microsoft-purview) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| DLM diagnostics for retention errors, archive issues, inactive mailboxes, Recoverable Items growth, Teams messages not deleting, MRM/Purview conflicts, adaptive scope issues | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp). |
| Exchange mailbox, archive, legacy MRM, journal, transport, or recipient administration | `portal-exchange-admin-center` skill. |
| SharePoint and OneDrive sites, site sharing, site storage, site addresses, custom script, or site ownership | `portal-sharepoint-admin-center` skill. |
| Teams policies, meetings, messaging, external access, guest access, devices, voice, or Teams Phone | `portal-microsoft-teams-admin-center` skill. |
| Users, licenses, service health, Message center, billing, support, and tenant admin hub work | `portal-microsoft-365-admin-center` skill. |
| Entra roles, PIM, Conditional Access, B2B collaboration settings, identity governance, app registrations | `portal-microsoft-entra-admin-center` skill. |
| Azure Purview account resources, Data Map capacity/quota, network, subscription, cost, Azure RBAC | `azure-admin-safe-operations` or future Azure Portal skill. |
| Dataverse/Power Platform audit, DLP, retention, managed environments, or connector operations | Future Power Platform admin center skill or Microsoft-owned Power Platform/Dataverse skills. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Purview DLM diagnostics and Learn fallback | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) | Route active DLM troubleshooting upstream. Keep this skill focused on Purview portal navigation, official source grounding, and safety handoff. |
| Dataverse/Power Platform audit, retention, DLP, security posture | [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills), [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills) | Route product-specific build/deploy/admin operations upstream or to the future Power Platform portal skill. |
| Microsoft 365 workplace data and user content questions | [microsoft/work-iq](https://github.com/microsoft/work-iq) | Route user/workplace-data questions upstream when relevant. |
| Microsoft Graph sample discovery for Purview-adjacent workloads | [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Treat as project-specific sample lead only; verify Graph samples against official Graph and Purview docs before reuse. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Learn about Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview)
- [Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-portal)
- [Permissions in the Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-permissions)
- [Data Lifecycle Management](https://learn.microsoft.com/en-us/purview/data-lifecycle-management)
- [Create retention policies](https://learn.microsoft.com/en-us/purview/create-retention-policies)
- [Records management](https://learn.microsoft.com/en-us/purview/records-management)
- [eDiscovery](https://learn.microsoft.com/en-us/purview/edisc)
- [Audit solutions](https://learn.microsoft.com/en-us/purview/audit-solutions-overview)
- [Search the audit log](https://learn.microsoft.com/en-us/purview/audit-new-search)
- [Data Loss Prevention](https://learn.microsoft.com/en-us/purview/dlp-learn-about-dlp)
- [Information Protection](https://learn.microsoft.com/en-us/purview/information-protection)
- [Sensitivity labels](https://learn.microsoft.com/en-us/purview/sensitivity-labels)
- [Insider Risk Management](https://learn.microsoft.com/en-us/purview/insider-risk-management)
- [Communication Compliance](https://learn.microsoft.com/en-us/purview/communication-compliance)
- [Compliance Manager](https://learn.microsoft.com/en-us/purview/compliance-manager)
- [Data governance](https://learn.microsoft.com/en-us/purview/data-governance-overview)
- [Data Map](https://learn.microsoft.com/en-us/purview/data-map)
- [Unified Catalog](https://learn.microsoft.com/en-us/purview/unified-catalog)
- [AI data security and compliance](https://learn.microsoft.com/en-us/purview/ai-microsoft-purview)
- [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp)
- [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills)
- [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills)
- [microsoft/work-iq](https://github.com/microsoft/work-iq)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)