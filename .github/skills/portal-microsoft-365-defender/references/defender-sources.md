# Microsoft 365 Defender Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Microsoft 365 Defender portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Admin - Microsoft Defender / Security Portals
portalName: Microsoft 365 Defender
primaryURL: https://security.microsoft.com
secondaryURLs:
  - https://security.microsoft.com/homepage?tid={tenant_id}
  - https://aka.ms/de
note: Previously Microsoft 365 security
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Defender portal | The Microsoft Defender portal at `https://security.microsoft.com` combines protection, detection, investigation, and response across the organization and includes Microsoft Defender XDR plus provisioned Microsoft security solutions. | [Microsoft Defender XDR in the Microsoft Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender-portal) |
| Defender XDR overview | Defender XDR coordinates protection, detection, investigation, and response across endpoints, identities, email, apps, Defender for Cloud, Entra ID Protection, Purview DLP, app governance, Sentinel, and other signals. | [What is Microsoft Defender XDR?](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender) |
| Entra global role access | Defender XDR access can use Microsoft Entra global roles such as Security Administrator, Security Operator, Security Reader, Global Reader, and Global Administrator, with least privilege guidance. | [Manage access to Microsoft Defender XDR](https://learn.microsoft.com/en-us/defender-xdr/m365d-permissions) |
| Unified RBAC | Defender unified RBAC centralizes permissions across supported security solutions. Compliance permissions for DLP and Insider Risk are managed in Microsoft Purview, not Defender unified RBAC. | [Microsoft Defender unified RBAC](https://learn.microsoft.com/en-us/defender-xdr/manage-rbac) |
| Incidents and alerts | Incidents correlate related alerts into attack stories and provide a framework for investigation and response. Alerts come from Defender XDR, Sentinel, Defender services, and other integrated sources. | [Incidents and alerts](https://learn.microsoft.com/en-us/defender-xdr/incidents-overview) |
| Incident investigation | Incident pages include attack story, alerts, activities, assets, investigations, evidence and response, summary, similar incidents, go hunt, and blast radius caveats. | [Investigate incidents](https://learn.microsoft.com/en-us/defender-xdr/investigate-incidents) |
| Advanced hunting | Advanced hunting queries up to 30 days of Defender XDR data, uses UTC, has quotas and result limits, and requires explicit permissions for each data family. | [Advanced hunting overview](https://learn.microsoft.com/en-us/defender-xdr/advanced-hunting-overview) |
| Action center | Action center lists pending and completed remediation actions for devices, email, collaboration content, and identities, and has specific permissions for approving or rejecting actions. | [Action center](https://learn.microsoft.com/en-us/defender-xdr/m365d-action-center) |
| Automated investigation and response | AIR can investigate alerts across devices, email/content, and identities, produce verdicts, and take or recommend remediation actions depending on configuration. | [Automated investigation and response](https://learn.microsoft.com/en-us/defender-xdr/m365d-autoir) |
| Secure Score | Microsoft Secure Score summarizes security posture, provides recommended actions, includes multiple products, supports alternate mitigations, and has specific Defender unified RBAC and Entra role permissions. | [Microsoft Secure Score](https://learn.microsoft.com/en-us/defender-xdr/microsoft-secure-score) |
| Defender for Office 365 portal | Defender for Office 365 in the Defender portal includes Email & collaboration, Explorer or Real-time detections, Action center, submissions, policies and rules, reports, permissions, and settings. | [Defender for Office 365 in the Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-security-center-mdo) |
| Defender for Office 365 plans | Defender for Office 365 Plan 1 and Plan 2 add email and collaboration protection layers on top of built-in cloud mailbox security, with Plan 2 adding more investigation, hunting, response, and automation. | [Defender for Office 365 overview](https://learn.microsoft.com/en-us/defender-office-365/mdo-about) |
| Defender for Office 365 permissions | Email & collaboration roles can be managed in the Defender portal and overlap with Purview. Unified RBAC activation changes availability of the Email & collaboration permissions page. | [Defender for Office 365 permissions](https://learn.microsoft.com/en-us/defender-office-365/mdo-portal-permissions) |
| Submissions | Submissions let admins submit emails, attachments, URLs, and user reported messages to Microsoft. Allow/block choices can create Tenant Allow/Block List entries and have expiry/throttling/caveats. | [Manage submissions](https://learn.microsoft.com/en-us/defender-office-365/submissions-admin) |
| Defender for Endpoint | Defender for Endpoint is an endpoint security platform for prevention, detection, investigation, response, attack surface reduction, vulnerability management, APIs, and integrations. | [Microsoft Defender for Endpoint](https://learn.microsoft.com/en-us/defender-endpoint/microsoft-defender-endpoint) |
| Defender for Identity | Defender for Identity detects, investigates, and responds to identity-based attacks across on-premises, cloud, and hybrid environments, and contributes identity context to Defender incidents. | [Microsoft Defender for Identity](https://learn.microsoft.com/en-us/defender-for-identity/what-is) |
| Defender for Cloud Apps | Defender for Cloud Apps provides CASB, SaaS security posture, information protection, threat protection, and app governance for cloud apps. | [Microsoft Defender for Cloud Apps](https://learn.microsoft.com/en-us/defender-cloud-apps/what-is-defender-for-cloud-apps) |
| Defender for Cloud Apps portal integration | Defender for Cloud Apps is available inside the Microsoft Defender portal under Cloud Apps; cloud app alerts appear in incidents and alerts. | [Defender for Cloud Apps in the Defender portal](https://learn.microsoft.com/en-us/defender-cloud-apps/microsoft-365-security-center-defender-cloud-apps) |

## Specialist Portal Routing

| Task area | Route |
| --- | --- |
| Conditional Access, identity governance, Entra ID Protection configuration, app registrations, Microsoft Entra role assignment, PIM | `portal-microsoft-entra-admin-center` skill. |
| Device compliance, Intune endpoint configuration, app protection, device enrollment, device management | `portal-microsoft-intune-admin-center` skill unless Defender for Endpoint security operations is the controlling surface. |
| Exchange mail flow, accepted domains, transport rules, Exchange Online PowerShell, mailbox permissions | `portal-exchange-admin-center` skill. |
| Purview DLP policy configuration, audit, eDiscovery, retention, Insider Risk Management, Communication Compliance policy setup | `portal-microsoft-purview` skill. |
| Teams, SharePoint, or Microsoft 365 admin hub configuration reached from Defender links | Corresponding local portal skill. |
| Defender for Cloud, Microsoft Sentinel workspaces, Azure RBAC, Log Analytics, subscriptions, Azure policy, cloud resources | `azure-admin-safe-operations` or future Azure Portal skill. |
| Agent 365 observability or custom agent telemetry visible in Defender | Microsoft-owned Agent 365 skills where applicable; keep this skill focused on Defender portal administration and safety. |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| Azure resource protection, Defender for Cloud, Sentinel, KQL, security posture on Azure resources | [microsoft/azure-skills](https://github.com/microsoft/azure-skills) | Route Azure control-plane and Sentinel/Azure resource workflows upstream or to Azure MCP. |
| Agent 365 observability visible in Microsoft Defender | [microsoft/agent365-skills](https://github.com/microsoft/agent365-skills) | Route agent observability instrumentation and Agent 365 provisioning upstream. |
| Kubernetes/container deployment security recommendations with Defender for Containers | [microsoft/azure-skills](https://github.com/microsoft/azure-skills) | Route infrastructure deployment implementation to Azure skills; keep Defender portal skill for navigation and safety. |
| Microsoft Graph sample discovery for security workloads | [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Treat as project-specific sample lead only; verify Graph samples against official Graph and Defender docs before reuse. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft Defender XDR in the Microsoft Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender-portal)
- [What is Microsoft Defender XDR?](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender)
- [Manage access to Microsoft Defender XDR](https://learn.microsoft.com/en-us/defender-xdr/m365d-permissions)
- [Microsoft Defender unified RBAC](https://learn.microsoft.com/en-us/defender-xdr/manage-rbac)
- [Incidents and alerts](https://learn.microsoft.com/en-us/defender-xdr/incidents-overview)
- [Investigate incidents](https://learn.microsoft.com/en-us/defender-xdr/investigate-incidents)
- [Advanced hunting overview](https://learn.microsoft.com/en-us/defender-xdr/advanced-hunting-overview)
- [Action center](https://learn.microsoft.com/en-us/defender-xdr/m365d-action-center)
- [Automated investigation and response](https://learn.microsoft.com/en-us/defender-xdr/m365d-autoir)
- [Microsoft Secure Score](https://learn.microsoft.com/en-us/defender-xdr/microsoft-secure-score)
- [Defender for Office 365 in the Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-security-center-mdo)
- [Defender for Office 365 overview](https://learn.microsoft.com/en-us/defender-office-365/mdo-about)
- [Defender for Office 365 permissions](https://learn.microsoft.com/en-us/defender-office-365/mdo-portal-permissions)
- [Manage submissions](https://learn.microsoft.com/en-us/defender-office-365/submissions-admin)
- [Microsoft Defender for Endpoint](https://learn.microsoft.com/en-us/defender-endpoint/microsoft-defender-endpoint)
- [Microsoft Defender for Identity](https://learn.microsoft.com/en-us/defender-for-identity/what-is)
- [Microsoft Defender for Cloud Apps](https://learn.microsoft.com/en-us/defender-cloud-apps/what-is-defender-for-cloud-apps)
- [Defender for Cloud Apps in the Defender portal](https://learn.microsoft.com/en-us/defender-cloud-apps/microsoft-365-security-center-defender-cloud-apps)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [microsoft/agent365-skills](https://github.com/microsoft/agent365-skills)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)