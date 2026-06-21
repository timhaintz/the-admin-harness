# Upstream Skill Register

The Admin Harness should not duplicate official Microsoft skills or mature Microsoft-owned skill repositories. This register tracks upstream skill sources that agents should check before adding local skills, especially for Azure, Microsoft Graph, Entra, Microsoft 365, Purview, Power Platform, and agent-skill authoring workflows.

## Decision Model

Use this order when a new skill or workflow overlaps an upstream source:

1. **Reference** the upstream skill or plugin when it already solves the problem and can be installed directly by the user.
2. **Route** from an Admin Harness skill to the upstream source when this repo adds portal discovery, tenant safety, or source provenance around the workflow.
3. **Wrap** only when The Admin Harness must add IT-admin-specific safety gates, tenant-aware navigation, or portal-source mapping that upstream does not own.
4. **Vendor or fork** only after license, maintenance, source provenance, security posture, and update mechanics are explicitly reviewed.
5. **Create locally** only when no official or trusted upstream skill covers the workflow, or when this repo's scope is intentionally different.

Local portal-specific skills should usually be routing and safety layers. They should point to Microsoft Learn MCP, official product docs, and relevant upstream Microsoft skills instead of copying long procedures or reimplementing existing Azure/M365 capability packs.

## Official Microsoft Skill Sources

| Source | Status | Relevant coverage | Admin Harness decision |
| --- | --- | --- | --- |
| [microsoft/skills](https://github.com/microsoft/skills) | Official Microsoft open-source skill catalog | Azure SDKs, Microsoft Foundry, Microsoft Docs/Learn, Copilot SDK, MCP building, KQL, Microsoft 365 Agents SDK, skill creation, plugins, agents, MCP configs, eval harness | Reference as the primary Microsoft skill catalog. Do not copy broad skill catalogs into this repo. Use selected upstream skills as optional dependencies or routing targets. |
| [microsoft/azure-skills](https://github.com/microsoft/azure-skills) | Official Azure Skills Plugin | Azure MCP, Foundry MCP, Azure prepare/validate/deploy, resource lookup, diagnostics, compliance, cost, quotas, RBAC, KQL, storage, messaging, Entra app registration, Entra Agent ID | Prefer this plugin for Azure control-plane and Azure resource workflows. Admin Harness should add tenant/admin safety and portal context, not duplicate Azure skills. |
| [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure) | Upstream source for Azure skills | Azure plugin development, skill authoring, skill review, eval, token optimization, client support, sovereign cloud configuration | Use as the contribution and pattern source for Azure skills and skill-quality practices. Changes to Azure skills should go upstream here when appropriate. |
| [github/awesome-copilot](https://github.com/github/awesome-copilot) | GitHub community collection, not Microsoft-only | Agents, instructions, skills, hooks, workflows, plugins, learning hub, installable plugin marketplace | Use for discovery and patterns. Treat entries as third-party/community unless ownership and source quality are validated. |

## Microsoft-Owned Domain Skill Leads

| Source | Status | Relevant coverage | Admin Harness decision |
| --- | --- | --- | --- |
| [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) | Microsoft-owned domain repo | Purview Data Lifecycle Management diagnostics, Exchange Online and Security & Compliance PowerShell, Microsoft Learn fallback skill | Route Purview DLM troubleshooting to this repo when relevant. Keep local Purview portal skills focused on portal navigation, Learn grounding, and change-safety handoff. |
| [microsoft/Entra-POCAdvisor](https://github.com/microsoft/Entra-POCAdvisor) | Microsoft-owned domain repo | Entra Suite, Global Secure Access, Entra Private Access, Entra Internet Access, Conditional Access, ID Protection, ID Governance, Verified ID, External Identities | Use as a lead for Entra Suite planning and PoC guidance. Do not treat it as full Entra admin-center coverage. |
| [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills) | Microsoft-owned domain repo | Power Pages, Power Platform workflows, authentication, ALM, deployment, PAC CLI guidance | Route Power Platform and Power Pages build/deploy specifics here where applicable. Local portal skills should preserve admin-center navigation and approval boundaries. |
| [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills) | Microsoft-owned domain repo | Dataverse admin, security, environments, PAC CLI, solution operations, safety warnings | Use as a lead for Dataverse-specific workflows. Keep local guidance focused on tenant safety and official source routing. |
| [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills) | Microsoft-owned domain repo | Power CAT pro-code evaluation, canvas app analysis, generative pages guidance, and Power Platform app quality checks | Route app quality, evaluation, and pro-code assessment workflows here where applicable. Local portal skills should stay focused on admin-center navigation and safety. |
| [microsoft/skills-for-copilot-studio](https://github.com/microsoft/skills-for-copilot-studio) | Microsoft-owned domain repo | Copilot Studio agent cloning, testing, authentication, and management workflows | Route Copilot Studio agent build/test/deploy workflows here where applicable. Local portal skills should stay focused on PPAC routing, governance, and safety. |
| [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools) | Microsoft-owned product repo | Power Platform Build Tools, Azure DevOps tasks, PAC CLI, solution import/export, environment backup/restore, and deployment diagnostics | Route build-tool and Azure DevOps task workflows here where applicable. Local portal skills should not duplicate pipeline task troubleshooting bodies. |
| [microsoft/work-iq](https://github.com/microsoft/work-iq) | Microsoft-owned/product repo | WorkIQ MCP, Microsoft 365 workplace data, M365 agent toolkit skills, productivity workflows | Relevant to Microsoft 365 data and agent-development workflows, not a substitute for tenant admin portal skills. |
| [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) | Microsoft-owned project repo | Microsoft Graph sample search for Entra, Intune, Exchange, Teams, SharePoint, security, and Global Secure Access migration context | Treat as a project-specific Graph sample lead, not a general source of truth. Verify any Graph sample against Microsoft Graph docs before reuse. |

## Current Overlap Decisions

| Admin Harness area | Upstream overlap | Decision |
| --- | --- | --- |
| `microsoft-learn-research` | `microsoft/skills` has `microsoft-docs` | Keep local skill because this repo needs IT-admin safety, tenant-aware source rules, and Microsoft Learn MCP routing. Reference upstream `microsoft-docs` instead of duplicating its install guidance. |
| `azure-admin-safe-operations` | `microsoft/azure-skills`, Azure MCP, GitHub Copilot for Azure | Keep local skill as a safety/planning wrapper. Route detailed Azure resource lookup, RBAC, diagnostics, compliance, cost, quotas, and deployment workflows to official Azure skills or Azure MCP when installed. |
| `skill-authoring` | `microsoft/skills` `skill-creator`; GitHub Copilot for Azure skill-authoring/reviewer/eval skills | Keep local skill for Admin Harness conventions, but require upstream overlap checks and borrow quality patterns by reference. |
| Portal-specific skills | No broad official Microsoft admin portal skill pack found yet | Create local portal-specific routing skills, but each must check this register for official domain skills before adding task procedure. |
| `portal-microsoft-365-admin-center` | `microsoft/work-iq`, Microsoft 365 Agents SDK skills, Power Platform/Dataverse skill repos | Keep local Microsoft 365 Admin Center portal skill as a tenant admin hub and routing layer. Route workplace-data and agent-development workflows to upstream when relevant. |
| `portal-microsoft-entra-admin-center` | `entra-app-registration`, `entra-agent-id`, `Entra-POCAdvisor` | Keep local Entra Admin Center portal skill as a router/safety layer. Route app registration and Agent ID work to official upstream skills where applicable. |
| `portal-exchange-admin-center` | `microsoft/purview-dlm-mcp`, Microsoft 365 Admin Center, Microsoft Graph sample leads | Keep local Exchange Admin Center portal skill as a router/safety layer. Route Purview DLM diagnostics upstream and hub-level user/license/domain work back to Microsoft 365 Admin Center. |
| `portal-microsoft-teams-admin-center` | `microsoft/work-iq`, Microsoft 365 Agents Toolkit skills, `microsoft/purview-dlm-mcp`, Microsoft Graph sample leads | Keep local Teams Admin Center portal skill as a router/safety layer. Route workplace-data questions, Teams app/agent development, Purview DLM diagnostics, and Graph samples upstream when relevant. |
| `portal-sharepoint-admin-center` | `microsoft/SharePoint-Embedded-Samples`, `microsoft/work-iq`, `microsoft/power-platform-skills`, `microsoft/Managed-Apps`, `microsoft/purview-dlm-mcp`, Microsoft Graph sample leads | Keep local SharePoint Admin Center portal skill as a router/safety layer. Route SharePoint Embedded, app connector/developer, workplace-data, Purview DLM, and Graph sample workflows upstream when relevant. |
| `portal-microsoft-azure-portal` | `microsoft/azure-skills`, Azure MCP, `microsoft/GitHub-Copilot-for-Azure`, `azure-admin-safe-operations` | Keep local Azure Portal skill as a router/safety layer for portal navigation, source provenance, tenant/cloud routing, and safety handoff. Route Azure resource, RBAC, policy, cost, monitoring, quota, diagnostics, and deployment workflows to official Azure skills, Azure MCP, or the local Azure safety wrapper. |
| `portal-microsoft-purview` | `microsoft/purview-dlm-mcp`, `microsoft/Dataverse-skills`, `microsoft/power-platform-skills`, `microsoft/work-iq`, Microsoft Graph sample leads | Keep local Purview portal skill as a router/safety layer. Route DLM diagnostics, Dataverse/Power Platform audit and retention, workplace-data, and Graph sample workflows upstream when relevant. |
| `portal-microsoft-365-defender` | `microsoft/azure-skills`, `microsoft/agent365-skills`, Microsoft Graph sample leads | Keep local Microsoft 365 Defender portal skill as a router/safety layer. Route Azure/Sentinel/Defender for Cloud resource work, Agent 365 observability, and Graph sample workflows upstream when relevant. |
| `portal-power-platform-admin-center` | `microsoft/power-platform-skills`, `microsoft/Dataverse-skills`, `microsoft/Managed-Apps`, `microsoft/skills-for-copilot-studio`, `microsoft/power-cat-skills`, `microsoft/powerplatform-build-tools` | Keep local Power Platform admin center skill as a router/safety layer. Route Power Pages, Dataverse, managed app, Copilot Studio, Power CAT app quality/eval, and Power Platform Build Tools workflows upstream when relevant. |

## Required Check Before New Skills

Before adding a new Admin Harness skill, contributors must check:

- this register;
- [microsoft/skills](https://github.com/microsoft/skills);
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills) for Azure and Entra-adjacent work;
- Microsoft-owned domain repos for the product area;
- official Microsoft Learn or product documentation.

If an upstream skill exists, the PR should explain why the local skill is a reference, route, wrapper, or justified local implementation.

## Sources

- [microsoft/skills](https://github.com/microsoft/skills)
- [microsoft/skills README](https://raw.githubusercontent.com/microsoft/skills/main/README.md)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [microsoft/azure-skills README](https://raw.githubusercontent.com/microsoft/azure-skills/main/README.md)
- [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure)
- [github/awesome-copilot](https://github.com/github/awesome-copilot)
- [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp)
- [microsoft/Entra-POCAdvisor](https://github.com/microsoft/Entra-POCAdvisor)
- [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills)
- [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills)
- [microsoft/work-iq](https://github.com/microsoft/work-iq)
- [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA)
- [microsoft/SharePoint-Embedded-Samples](https://github.com/microsoft/SharePoint-Embedded-Samples)
- [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps)
- [microsoft/agent365-skills](https://github.com/microsoft/agent365-skills)
- [microsoft/skills-for-copilot-studio](https://github.com/microsoft/skills-for-copilot-studio)
- [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills)
- [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools)