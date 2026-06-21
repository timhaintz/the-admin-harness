# Source Register

This register lists public sources retrieved and used to ground The Admin Harness docs, skills, MCP templates, and repository conventions. Retrieved: 2026-05-31.

Every public Markdown file should either include a local `Sources` section or link to this register. Product requirements that came from the project owner are marked as user-requested; technical standards and implementation claims should point to public sources.

## Agent And Instruction Standards

| Claim area | Source |
| --- | --- |
| Agent Skills are folders with `SKILL.md`, metadata, instructions, optional scripts/references/assets, and progressive loading | [Agent Skills overview](https://agentskills.io/home) |
| VS Code/GitHub Copilot project skills can live under `.github/skills/`, `.claude/skills/`, or `.agents/skills/`; `SKILL.md` requires YAML frontmatter with `name` and `description` rules | [VS Code: Use Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills) |
| VS Code custom instructions support `.github/copilot-instructions.md`, `AGENTS.md`, `CLAUDE.md`, `.github/instructions`, and `.claude/rules` locations | [VS Code: Use custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions) |
| GitHub Copilot repository instructions support `.github/copilot-instructions.md`, `.github/instructions/*.instructions.md`, and `AGENTS.md`; root `CLAUDE.md`/`GEMINI.md` are compatibility options | [GitHub Docs: Adding repository custom instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot) |
| `AGENTS.md` is an open format for guiding coding agents | [agentsmd/agents.md](https://github.com/agentsmd/agents.md) |
| GitHub maintains a community collection of agents, instructions, skills, hooks, workflows, and plugins | [github/awesome-copilot](https://github.com/github/awesome-copilot) |

## Claude Code Sources

| Claim area | Source |
| --- | --- |
| Claude Code project settings and shared project scope use `.claude/settings.json`; project/local/user scopes and sensitive-file denial are documented | [Claude Code settings](https://code.claude.com/docs/en/settings) |
| Claude Code reads `CLAUDE.md`, supports `@AGENTS.md` imports, `.claude/CLAUDE.md`, `.claude/rules/`, `CLAUDE.local.md`, and auto memory | [Claude Code memory](https://code.claude.com/docs/en/memory) |
| Claude Code skills support `.claude/skills/<skill>/SKILL.md`, supporting files, slash invocation, and Agent Skills compatibility | [Claude Code skills](https://code.claude.com/docs/en/skills) |
| Claude Code subagents use `.claude/agents/` Markdown files with YAML frontmatter and can scope tools, MCP servers, permissions, and memory | [Claude Code subagents](https://code.claude.com/docs/en/sub-agents) |
| Claude Code can connect to tools via MCP, supports local/project/user MCP scopes, `.mcp.json`, OAuth flows, environment expansion, and plugin-provided MCP servers | [Claude Code MCP](https://code.claude.com/docs/en/mcp) |
| Claude Code plugins package skills, agents, hooks, MCP servers, and settings with `.claude-plugin/plugin.json`; plugins are for sharing/versioned distribution | [Claude Code plugins](https://code.claude.com/docs/en/plugins) |
| Anthropic publishes a public skills reference repo and Claude plugin marketplace examples | [anthropics/skills](https://github.com/anthropics/skills) |

## Microsoft And MCP Sources

| Claim area | Source |
| --- | --- |
| Microsoft Learn MCP Server URL, VS Code setup, plugin install options, and recommended instructions | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| Azure MCP Server documentation, supported scenarios, tools, and IDE setup | [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/) |
| MCP is an open protocol for connecting LLM applications to data/tools; security principles require user consent, privacy, and tool-safety controls | [MCP specification 2025-06-18](https://modelcontextprotocol.io/specification/2025-06-18) |
| Microsoft Zero Trust identity guidance: verify explicitly, use least-privileged access, assume breach | [Securing identity with Zero Trust](https://learn.microsoft.com/en-us/security/zero-trust/deploy/identity) |
| Azure RBAC best practices: least privilege, narrow scopes, PIM, limited subscription owners, avoid wildcard custom roles | [Best practices for Azure RBAC](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices) |
| Microsoft identity platform least-privilege guidance for applications and consent | [Enhance security with the principle of least privilege](https://learn.microsoft.com/en-us/entra/identity-platform/secure-least-privileged-access) |
| Microsoft Graph request structure, HTTP methods, `v1.0` versus `beta`, Graph Explorer, and resource permissions | [Use the Microsoft Graph API](https://learn.microsoft.com/en-us/graph/use-the-api) |
| Microsoft Graph authentication, authorization, app access, permissions, and throttling entry points | [Microsoft Graph authentication and authorization overview](https://learn.microsoft.com/en-us/graph/auth/) |
| Microsoft Graph permissions reference, least-privilege warning, delegated/application permissions, and high-risk permission cautions | [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference) |
| Microsoft Graph PowerShell SDK uses Microsoft Graph APIs, modern authentication through MSAL, least-privilege permission requests, and cross-platform PowerShell support | [Microsoft Graph PowerShell overview](https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview) |

## Script And Graph Safety Sources

| Claim area | Source |
| --- | --- |
| PSScriptAnalyzer is a static code checker for PowerShell modules and scripts with built-in rules for code quality and potential defects | [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview) |
| PSScriptAnalyzer is an open-source PowerShell static analyzer with rules for uninitialized variables, PSCredential use, Invoke-Expression, and more | [PowerShell/PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) |
| ShellCheck finds bugs in shell scripts and is available as a local CLI, web tool, editor integration, and build/test-suite check | [ShellCheck](https://www.shellcheck.net/) and [koalaman/shellcheck](https://github.com/koalaman/shellcheck) |
| Microsoft Graph writes use POST/PATCH/PUT/DELETE while GET reads data; write requests require a request body and should be treated as change operations in this repo | [Use the Microsoft Graph API: HTTP methods](https://learn.microsoft.com/en-us/graph/use-the-api#http-methods) |
| Microsoft recommends least-privileged Graph permissions and cautions against broad permissions such as write, grant, role-management, and credential-management permissions | [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference) |

## Merill Fernando Tool Research

| Tool area | Source |
| --- | --- |
| Merill Fernando's public tools include Maester, cmd.ms, Graph X-Ray, lokka.dev, graph.pm, Graph Permissions Explorer, idPowerToys, Entra sign-in URL builder, Entra Exporter, MSIdentityTools, and related Microsoft security/community tools | [Merill Fernando](https://merill.net/) |
| Maester is an open-source Microsoft 365 security test automation framework with curated tests, Pester/Microsoft Graph foundations, reports, and CI/CD monitoring patterns | [Maester](https://maester.dev/) and [maester365/maester](https://github.com/maester365/maester) |
| Graph X-Ray captures Microsoft admin portal Graph API calls and generates code snippets for automation; it is independently developed and open source | [Graph X-Ray](https://graphxray.merill.net/) |
| `cmd.ms` provides Microsoft Cloud command shortcuts for admin portals and documentation pages | [cmd.ms](https://cmd.ms/) |
| Graph Permissions Explorer is a community tool for browsing Microsoft Graph APIs and permission exposure; official Graph permissions docs remain authoritative for committed guidance | [Merill Fernando](https://merill.net/) and [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference) |

## Portal And Skills Repositories

| Claim area | Source |
| --- | --- |
| `msportals.io` portal links are built from JSON files under `_data/portals/`; upstream is `adamfowlerit/msportals.io` | [adamfowlerit/msportals.io](https://github.com/adamfowlerit/msportals.io) |
| Admin portal JSON includes `groupName`, `portalName`, `primaryURL`, optional `secondaryURLs`, optional `note`, and tenant placeholders such as `{tenant_id}` | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| Microsoft's open-source skills repo uses `.github/skills`, `.github/plugins`, agents, prompts, MCP configs, symlinked multi-agent skill sharing, and test harnesses; it warns to use skills selectively to avoid context rot | [microsoft/skills README](https://raw.githubusercontent.com/microsoft/skills/main/README.md) |
| `microsoft/skills` includes core skills such as `microsoft-docs`, `mcp-builder`, `skill-creator`, `kql`, and `entra-agent-id`, plus plugin bundles for Azure SDK, Foundry, M365 Agents SDK, and deep wiki workflows | [microsoft/skills](https://github.com/microsoft/skills) |
| `microsoft/azure-skills` packages Azure skills, Azure MCP, and Foundry MCP as an official multi-host Azure capability layer | [microsoft/azure-skills](https://github.com/microsoft/azure-skills) and [microsoft/azure-skills README](https://raw.githubusercontent.com/microsoft/azure-skills/main/README.md) |
| `microsoft/azure-skills` is automatically synced from `microsoft/GitHub-Copilot-for-Azure`; Azure skill contributions should go to that upstream repository | [microsoft/azure-skills README](https://raw.githubusercontent.com/microsoft/azure-skills/main/README.md) and [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure) |
| GitHub's Awesome Copilot collection contains community agents, instructions, skills, hooks, workflows, and plugins; entries should be inspected before installing | [github/awesome-copilot](https://github.com/github/awesome-copilot) |
| Microsoft-owned domain repos exist for Purview DLM diagnostics, Entra PoC advice, Power Platform, Dataverse, WorkIQ, and project-specific Microsoft Graph samples | [docs/upstream-skill-register.md](upstream-skill-register.md) |
| Portal-specific skills in this repo must map upstream portal entries to Microsoft Learn MCP-grounded task guidance | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) and [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |

## Portal Skill Sources

| Portal skill | Source |
| --- | --- |
| `portal-microsoft-intune-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-intune-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-intune-admin-center`: admin center navigation and workloads | [Tutorial: Walkthrough Microsoft Intune Admin Center](https://learn.microsoft.com/en-us/intune/fundamentals/tutorial-admin-center-walkthrough) |
| `portal-microsoft-intune-admin-center`: compliance policy overview and Conditional Access integration | [Use compliance policies to set rules for devices you manage with Intune](https://learn.microsoft.com/en-us/intune/device-security/compliance/overview) |
| `portal-microsoft-intune-admin-center`: create compliance policy requirements and workflow | [Create a compliance policy in Microsoft Intune](https://learn.microsoft.com/en-us/intune/device-security/compliance/create-policy) |
| `portal-microsoft-intune-admin-center`: monitor compliance policy reports and reporting caveats | [Monitor results of your Intune device compliance policies](https://learn.microsoft.com/en-us/intune/device-security/compliance/monitor-policy) |
| `portal-microsoft-intune-admin-center`: RBAC and least-privilege admin roles | [Role-based access control (RBAC) with Microsoft Intune](https://learn.microsoft.com/en-us/intune/fundamentals/role-based-access-control/overview) |
| `portal-microsoft-entra-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-entra-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-entra-admin-center`: admin center navigation and product areas | [Microsoft Entra admin center overview](https://learn.microsoft.com/en-us/entra/fundamentals/entra-admin-center) |
| `portal-microsoft-entra-admin-center`: Entra product family and management surfaces | [What is Microsoft Entra?](https://learn.microsoft.com/en-us/entra/fundamentals/what-is-entra) |
| `portal-microsoft-entra-admin-center`: Conditional Access overview and admin experience | [Conditional Access overview](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview) |
| `portal-microsoft-entra-admin-center`: Conditional Access troubleshooting and lockout warnings | [Troubleshoot Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/troubleshoot-conditional-access) |
| `portal-microsoft-entra-admin-center`: Conditional Access What If tool | [Conditional Access What If tool](https://learn.microsoft.com/en-us/entra/identity/conditional-access/what-if-tool) |
| `portal-microsoft-entra-admin-center`: sign-in logs and read-only investigation | [Microsoft Entra sign-in logs](https://learn.microsoft.com/en-us/entra/identity/monitoring-health/concept-sign-ins) |
| `portal-microsoft-entra-admin-center`: app registration workflow and prerequisites | [Register an application in Microsoft Entra ID](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app) |
| `portal-microsoft-entra-admin-center`: role best practices, PIM, and Global Administrator limits | [Best practices for Microsoft Entra roles](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/best-practices) |
| `portal-microsoft-entra-admin-center`: built-in roles and permissions | [Microsoft Entra built-in roles](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference) |
| `portal-microsoft-entra-admin-center`: Privileged Identity Management | [Microsoft Entra Privileged Identity Management](https://learn.microsoft.com/en-us/entra/id-governance/privileged-identity-management/pim-configure) |
| `portal-microsoft-entra-admin-center`: upstream skill overlap for app registrations and Agent ID | [microsoft/azure-skills](https://github.com/microsoft/azure-skills) |
| `portal-microsoft-entra-admin-center`: upstream Entra Suite PoC planning | [microsoft/Entra-POCAdvisor](https://github.com/microsoft/Entra-POCAdvisor) |
| `portal-microsoft-365-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-365-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-365-admin-center`: admin center features, navigation, and specialist admin centers | [Microsoft 365 admin center overview](https://learn.microsoft.com/en-us/microsoft-365/admin/admin-overview/admin-center-overview) |
| `portal-microsoft-365-admin-center`: admin roles, least privilege, and Global Administrator guidance | [About administrator roles in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-admin-roles) |
| `portal-microsoft-365-admin-center`: add users and assign licenses workflow | [Add users and assign licenses in Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/add-users) |
| `portal-microsoft-365-admin-center`: license assignment and removal caveats | [Assign or unassign licenses for users](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/assign-licenses-to-users) |
| `portal-microsoft-365-admin-center`: group creation workflow | [Create a group in the Microsoft 365 admin center](https://learn.microsoft.com/en-us/microsoft-365/admin/create-groups/create-groups) |
| `portal-microsoft-365-admin-center`: custom domain and DNS setup | [Add a custom domain to Microsoft 365](https://learn.microsoft.com/en-us/microsoft-365/admin/setup/add-domain) |
| `portal-microsoft-365-admin-center`: Health dashboard and service health | [Microsoft 365 Health dashboard overview](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/health-dashboard-overview) |
| `portal-microsoft-365-admin-center`: Message center and Microsoft 365 change management | [Microsoft 365 Message center](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/message-center) |
| `portal-microsoft-365-admin-center`: Integrated apps portal | [Integrated apps portal](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/test-and-deploy-microsoft-365-apps) |
| `portal-microsoft-365-admin-center`: centralized deployment of Office Add-ins | [Centralized deployment of Office Add-ins](https://learn.microsoft.com/en-us/microsoft-365/admin/manage/centralized-deployment-of-add-ins) |
| `portal-microsoft-365-admin-center`: upstream skill overlap for Microsoft 365 workplace data and agent tooling | [microsoft/work-iq](https://github.com/microsoft/work-iq) and [microsoft/skills](https://github.com/microsoft/skills) |
| `portal-exchange-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-exchange-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-exchange-admin-center`: EAC overview, URL, and RBAC visibility | [Exchange admin center in Exchange Online](https://learn.microsoft.com/en-us/exchange/exchange-admin-center) |
| `portal-exchange-admin-center`: Exchange Online recipient types | [Recipients in Exchange Online](https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/recipients-in-exchange-online) |
| `portal-exchange-admin-center`: Exchange Online permissions and RBAC | [Permissions in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/permissions-exo) |
| `portal-exchange-admin-center`: role group management | [Manage role groups in Exchange Online](https://learn.microsoft.com/en-us/exchange/permissions-exo/role-groups) |
| `portal-exchange-admin-center`: Exchange Administrator role | [Exchange Administrator role](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/about-exchange-online-admin-role) |
| `portal-exchange-admin-center`: mail flow best practices and DNS records | [Mail flow best practices](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/mail-flow-best-practices) |
| `portal-exchange-admin-center`: connector scenarios and open relay warning | [Configure mail flow using connectors](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow) |
| `portal-exchange-admin-center`: accepted domain types | [Manage accepted domains](https://learn.microsoft.com/en-us/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) |
| `portal-exchange-admin-center`: mail flow rules and safety caveats | [Mail flow rules](https://learn.microsoft.com/en-us/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) |
| `portal-exchange-admin-center`: mailbox migration options | [Mailbox migration options](https://learn.microsoft.com/en-us/exchange/mailbox-migration/mailbox-migration) |
| `portal-exchange-admin-center`: upstream Purview DLM diagnostic overlap | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) |
| `portal-microsoft-teams-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-teams-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-teams-admin-center`: Teams administration roadmap | [Manage and monitor Teams](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-overview) |
| `portal-microsoft-teams-admin-center`: Teams admin center team management | [Manage teams in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-teams-in-modern-portal) |
| `portal-microsoft-teams-admin-center`: Teams admin roles and least privilege | [Use Microsoft Teams administrator roles to manage Teams](https://learn.microsoft.com/en-us/microsoftteams/using-admin-roles) |
| `portal-microsoft-teams-admin-center`: Teams policy assignment concepts | [Assign policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/policy-assignment-overview) |
| `portal-microsoft-teams-admin-center`: Teams policy assignment operations | [Assign policies to users and groups](https://learn.microsoft.com/en-us/microsoftteams/assign-policies-users-and-groups) |
| `portal-microsoft-teams-admin-center`: channel policies | [Manage channel policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-policies) |
| `portal-microsoft-teams-admin-center`: meeting and event policies | [Manage meeting and event policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/meeting-policies-overview) |
| `portal-microsoft-teams-admin-center`: messaging policies | [Manage messaging policies in Teams](https://learn.microsoft.com/en-us/microsoftteams/messaging-policies-in-teams) |
| `portal-microsoft-teams-admin-center`: app and agent governance | [Manage your apps in the Microsoft Teams admin center](https://learn.microsoft.com/en-us/microsoftteams/manage-apps) |
| `portal-microsoft-teams-admin-center`: app permission policy caveats | [Manage app permission policies in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/teams-app-permission-policies) |
| `portal-microsoft-teams-admin-center`: external access | [Manage external meetings and chat with people and organizations using Microsoft identities](https://learn.microsoft.com/en-us/microsoftteams/manage-external-access) |
| `portal-microsoft-teams-admin-center`: guest access and B2B dependencies | [Guest access in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/guest-access) |
| `portal-microsoft-teams-admin-center`: Teams Phone and cloud voice | [Teams calling and cloud voice overview](https://learn.microsoft.com/en-us/microsoftteams/cloud-voice-landing-page) |
| `portal-microsoft-teams-admin-center`: Teams device management | [Manage devices in Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/devices/device-management) |
| `portal-microsoft-teams-admin-center`: analytics and reporting | [Microsoft Teams analytics and reporting](https://learn.microsoft.com/en-us/microsoftteams/teams-analytics-and-reports/teams-reporting-reference) |
| `portal-microsoft-teams-admin-center`: upstream Microsoft 365 data, app development, Graph, and DLM overlap | [microsoft/work-iq](https://github.com/microsoft/work-iq), [microsoft/skills](https://github.com/microsoft/skills), [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA), and [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp) |
| `portal-sharepoint-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-sharepoint-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-sharepoint-admin-center`: active sites and site management | [Manage sites in the SharePoint admin center](https://learn.microsoft.com/en-us/sharepoint/manage-sites-in-new-admin-center) |
| `portal-sharepoint-admin-center`: SharePoint Administrator role and least privilege | [About the SharePoint Administrator role](https://learn.microsoft.com/en-us/sharepoint/sharepoint-admin-role) |
| `portal-sharepoint-admin-center`: site creation | [Create a site](https://learn.microsoft.com/en-us/sharepoint/create-site-collection) |
| `portal-sharepoint-admin-center`: external sharing overview and Entra B2B relationship | [Overview of external sharing in SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/external-sharing-overview) |
| `portal-sharepoint-admin-center`: sharing settings for SharePoint and OneDrive | [Manage sharing settings for SharePoint and OneDrive](https://learn.microsoft.com/en-us/sharepoint/turn-external-sharing-on-or-off) |
| `portal-sharepoint-admin-center`: site storage limits | [Manage site storage limits](https://learn.microsoft.com/en-us/sharepoint/manage-site-collection-storage-limits) |
| `portal-sharepoint-admin-center`: site address changes | [Change a site address](https://learn.microsoft.com/en-us/sharepoint/change-site-address) |
| `portal-sharepoint-admin-center`: migration overview | [Migrate to Microsoft 365](https://learn.microsoft.com/en-us/sharepointmigration/migrate-to-sharepoint-online) |
| `portal-sharepoint-admin-center`: Migration Manager | [Migrate file shares with Migration Manager](https://learn.microsoft.com/en-us/sharepointmigration/mm-get-started) |
| `portal-sharepoint-admin-center`: SharePoint Migration Tool | [SharePoint Migration Tool](https://learn.microsoft.com/en-us/sharepointmigration/introducing-the-sharepoint-migration-tool) |
| `portal-sharepoint-admin-center`: user profile administration | [Manage user profiles](https://learn.microsoft.com/en-us/sharepoint/manage-user-profiles) |
| `portal-sharepoint-admin-center`: custom script safety | [Allow or prevent custom scripts](https://learn.microsoft.com/en-us/sharepoint/allow-or-prevent-custom-script) |
| `portal-sharepoint-admin-center`: upstream SharePoint Embedded, app connector, WorkIQ, DLM, and Graph overlap | [microsoft/SharePoint-Embedded-Samples](https://github.com/microsoft/SharePoint-Embedded-Samples), [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps), [microsoft/work-iq](https://github.com/microsoft/work-iq), [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp), and [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) |
| `portal-microsoft-purview`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-purview`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-purview`: product scope | [Learn about Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview) |
| `portal-microsoft-purview`: portal navigation and solution cards | [Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-portal) |
| `portal-microsoft-purview`: permissions, role groups, Entra role precedence, and admin units | [Permissions in the Microsoft Purview portal](https://learn.microsoft.com/en-us/purview/purview-permissions) |
| `portal-microsoft-purview`: Data Lifecycle Management | [Data Lifecycle Management](https://learn.microsoft.com/en-us/purview/data-lifecycle-management) |
| `portal-microsoft-purview`: retention policy creation and timing caveats | [Create retention policies](https://learn.microsoft.com/en-us/purview/create-retention-policies) |
| `portal-microsoft-purview`: records management | [Records management](https://learn.microsoft.com/en-us/purview/records-management) |
| `portal-microsoft-purview`: eDiscovery current experience | [eDiscovery](https://learn.microsoft.com/en-us/purview/edisc) |
| `portal-microsoft-purview`: audit capabilities | [Audit solutions](https://learn.microsoft.com/en-us/purview/audit-solutions-overview) |
| `portal-microsoft-purview`: audit search | [Search the audit log](https://learn.microsoft.com/en-us/purview/audit-new-search) |
| `portal-microsoft-purview`: Data Loss Prevention | [Data Loss Prevention](https://learn.microsoft.com/en-us/purview/dlp-learn-about-dlp) |
| `portal-microsoft-purview`: Information Protection | [Information Protection](https://learn.microsoft.com/en-us/purview/information-protection) |
| `portal-microsoft-purview`: sensitivity labels | [Sensitivity labels](https://learn.microsoft.com/en-us/purview/sensitivity-labels) |
| `portal-microsoft-purview`: Insider Risk Management | [Insider Risk Management](https://learn.microsoft.com/en-us/purview/insider-risk-management) |
| `portal-microsoft-purview`: Communication Compliance | [Communication Compliance](https://learn.microsoft.com/en-us/purview/communication-compliance) |
| `portal-microsoft-purview`: Compliance Manager | [Compliance Manager](https://learn.microsoft.com/en-us/purview/compliance-manager) |
| `portal-microsoft-purview`: data governance | [Data governance](https://learn.microsoft.com/en-us/purview/data-governance-overview) |
| `portal-microsoft-purview`: Data Map | [Data Map](https://learn.microsoft.com/en-us/purview/data-map) |
| `portal-microsoft-purview`: Unified Catalog | [Unified Catalog](https://learn.microsoft.com/en-us/purview/unified-catalog) |
| `portal-microsoft-purview`: AI data security and compliance | [AI data security and compliance](https://learn.microsoft.com/en-us/purview/ai-microsoft-purview) |
| `portal-microsoft-purview`: upstream DLM, Dataverse/Power Platform, WorkIQ, and Graph overlap | [microsoft/purview-dlm-mcp](https://github.com/microsoft/purview-dlm-mcp), [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills), [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/work-iq](https://github.com/microsoft/work-iq), and [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) |
| `portal-microsoft-365-defender`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-365-defender`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-365-defender`: Defender portal overview | [Microsoft Defender XDR in the Microsoft Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender-portal) |
| `portal-microsoft-365-defender`: Defender XDR product scope | [What is Microsoft Defender XDR?](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-defender) |
| `portal-microsoft-365-defender`: Entra global role access | [Manage access to Microsoft Defender XDR](https://learn.microsoft.com/en-us/defender-xdr/m365d-permissions) |
| `portal-microsoft-365-defender`: unified RBAC | [Microsoft Defender unified RBAC](https://learn.microsoft.com/en-us/defender-xdr/manage-rbac) |
| `portal-microsoft-365-defender`: incidents and alerts | [Incidents and alerts](https://learn.microsoft.com/en-us/defender-xdr/incidents-overview) |
| `portal-microsoft-365-defender`: incident investigation | [Investigate incidents](https://learn.microsoft.com/en-us/defender-xdr/investigate-incidents) |
| `portal-microsoft-365-defender`: advanced hunting | [Advanced hunting overview](https://learn.microsoft.com/en-us/defender-xdr/advanced-hunting-overview) |
| `portal-microsoft-365-defender`: Action center | [Action center](https://learn.microsoft.com/en-us/defender-xdr/m365d-action-center) |
| `portal-microsoft-365-defender`: automated investigation and response | [Automated investigation and response](https://learn.microsoft.com/en-us/defender-xdr/m365d-autoir) |
| `portal-microsoft-365-defender`: Secure Score | [Microsoft Secure Score](https://learn.microsoft.com/en-us/defender-xdr/microsoft-secure-score) |
| `portal-microsoft-365-defender`: Defender for Office 365 portal experience | [Defender for Office 365 in the Defender portal](https://learn.microsoft.com/en-us/defender-xdr/microsoft-365-security-center-mdo) |
| `portal-microsoft-365-defender`: Defender for Office 365 plans and capabilities | [Defender for Office 365 overview](https://learn.microsoft.com/en-us/defender-office-365/mdo-about) |
| `portal-microsoft-365-defender`: Defender for Office 365 permissions | [Defender for Office 365 permissions](https://learn.microsoft.com/en-us/defender-office-365/mdo-portal-permissions) |
| `portal-microsoft-365-defender`: submissions and Tenant Allow/Block List caveats | [Manage submissions](https://learn.microsoft.com/en-us/defender-office-365/submissions-admin) |
| `portal-microsoft-365-defender`: Defender for Endpoint | [Microsoft Defender for Endpoint](https://learn.microsoft.com/en-us/defender-endpoint/microsoft-defender-endpoint) |
| `portal-microsoft-365-defender`: Defender for Identity | [Microsoft Defender for Identity](https://learn.microsoft.com/en-us/defender-for-identity/what-is) |
| `portal-microsoft-365-defender`: Defender for Cloud Apps | [Microsoft Defender for Cloud Apps](https://learn.microsoft.com/en-us/defender-cloud-apps/what-is-defender-for-cloud-apps) |
| `portal-microsoft-365-defender`: Defender for Cloud Apps in Defender portal | [Defender for Cloud Apps in the Defender portal](https://learn.microsoft.com/en-us/defender-cloud-apps/microsoft-365-security-center-defender-cloud-apps) |
| `portal-microsoft-365-defender`: upstream Azure, Agent 365, and Graph overlap | [microsoft/azure-skills](https://github.com/microsoft/azure-skills), [microsoft/agent365-skills](https://github.com/microsoft/agent365-skills), and [microsoft/Migrate2GSA](https://github.com/microsoft/Migrate2GSA) |
| `portal-power-platform-admin-center`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-power-platform-admin-center`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-power-platform-admin-center`: admin center overview | [Overview of the Power Platform admin center](https://learn.microsoft.com/en-us/power-platform/admin/admin-documentation) |
| `portal-power-platform-admin-center`: environments overview | [Power Platform environments overview](https://learn.microsoft.com/en-us/power-platform/admin/environments-overview) |
| `portal-power-platform-admin-center`: environment creation | [Create and manage environments](https://learn.microsoft.com/en-us/power-platform/admin/create-environment) |
| `portal-power-platform-admin-center`: Dataverse role types | [Role-based security roles for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/database-security) |
| `portal-power-platform-admin-center`: Dataverse security roles and privileges | [Security roles and privileges for Dataverse](https://learn.microsoft.com/en-us/power-platform/admin/security-roles-privileges) |
| `portal-power-platform-admin-center`: data policies | [Data policies](https://learn.microsoft.com/en-us/power-platform/admin/wp-data-loss-prevention) |
| `portal-power-platform-admin-center`: connector classification | [Connector classification](https://learn.microsoft.com/en-us/power-platform/admin/dlp-connector-classification) |
| `portal-power-platform-admin-center`: Managed Environments | [Managed Environments overview](https://learn.microsoft.com/en-us/power-platform/admin/managed-environment-overview) |
| `portal-power-platform-admin-center`: Dataverse capacity and storage | [Dataverse capacity-based storage](https://learn.microsoft.com/en-us/power-platform/admin/capacity-storage) |
| `portal-power-platform-admin-center`: tenant settings | [Tenant settings](https://learn.microsoft.com/en-us/power-platform/admin/tenant-settings) |
| `portal-power-platform-admin-center`: governance considerations | [Security and governance considerations](https://learn.microsoft.com/en-us/power-platform/admin/governance-considerations) |
| `portal-power-platform-admin-center`: upstream Power Platform, Dataverse, managed app, Copilot Studio, Power CAT, and build-tools overlap | [microsoft/power-platform-skills](https://github.com/microsoft/power-platform-skills), [microsoft/Dataverse-skills](https://github.com/microsoft/Dataverse-skills), [microsoft/Managed-Apps](https://github.com/microsoft/Managed-Apps), [microsoft/skills-for-copilot-studio](https://github.com/microsoft/skills-for-copilot-studio), [microsoft/power-cat-skills](https://github.com/microsoft/power-cat-skills), and [microsoft/powerplatform-build-tools](https://github.com/microsoft/powerplatform-build-tools) |
| `portal-microsoft-azure-portal`: source-backed portal entry | [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json) |
| `portal-microsoft-azure-portal`: Learn MCP grounding | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |
| `portal-microsoft-azure-portal`: Azure Portal overview | [What is the Azure portal?](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-overview) |
| `portal-microsoft-azure-portal`: Azure Resource Manager | [What is Azure Resource Manager?](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview) |
| `portal-microsoft-azure-portal`: resource groups in portal | [Manage resource groups in the Azure portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal) |
| `portal-microsoft-azure-portal`: Azure RBAC overview | [What is Azure RBAC?](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview) |
| `portal-microsoft-azure-portal`: Azure RBAC best practices | [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices) |
| `portal-microsoft-azure-portal`: Azure role assignments in portal | [Assign Azure roles using the Azure portal](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) |
| `portal-microsoft-azure-portal`: Azure Policy | [Overview of Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/overview) |
| `portal-microsoft-azure-portal`: Azure Monitor | [Azure Monitor overview](https://learn.microsoft.com/en-us/azure/azure-monitor/fundamentals/overview) |
| `portal-microsoft-azure-portal`: Azure Service Health | [What is Azure Service Health?](https://learn.microsoft.com/en-us/azure/service-health/overview) |
| `portal-microsoft-azure-portal`: Azure Cloud Shell | [What is Azure Cloud Shell?](https://learn.microsoft.com/en-us/azure/cloud-shell/overview) |
| `portal-microsoft-azure-portal`: Cost Analysis | [Start using Cost Analysis](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/quick-acm-cost-analysis) |
| `portal-microsoft-azure-portal`: Azure subscription and service limits | [Azure subscription and service limits](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits) |
| `portal-microsoft-azure-portal`: Azure MCP and upstream Azure skills overlap | [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/), [microsoft/azure-skills](https://github.com/microsoft/azure-skills), and [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure) |

## Open Source And Secrets

| Claim area | Source |
| --- | --- |
| MIT License text and OSI-approved SPDX identifier | [Open Source Initiative: MIT License](https://opensource.org/license/mit) |
| GitHub Actions secrets and variables should store sensitive workflow values instead of committing secrets; OIDC can avoid long-lived cloud secrets | [GitHub Docs: Using secrets in GitHub Actions](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions) |

## GitHub Workflow And CI

| Claim area | Source |
| --- | --- |
| GitHub Actions workflow files use YAML and live under `.github/workflows`; `pull_request`, `push`, `workflow_dispatch`, permissions, jobs, and concurrency are workflow syntax features | [GitHub Actions workflow syntax](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions) |
| CodeQL code scanning supports public repositories and supports GitHub Actions workflow analysis | [About code scanning with CodeQL](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql) |
| CodeQL default setup automatically chooses languages, query suite, and trigger events; do not add an advanced CodeQL workflow while default setup is enabled | [Configuring default setup for code scanning](https://docs.github.com/en/code-security/code-scanning/enabling-code-scanning/configuring-default-setup-for-code-scanning) |
| Full merge commits preserve all commits from a feature branch and add a merge commit; squash merge combines PR commits into one commit and loses original commit SHA granularity | [GitHub merge methods](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/about-merge-methods-on-github) |
| Repositories can allow or disable squash merging | [Configuring commit squashing](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/configuring-commit-squashing-for-pull-requests) |
| Repositories can allow or disable rebase merging | [Configuring commit rebasing](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/configuring-commit-rebasing-for-pull-requests) |

## Engineering Principles

| Claim area | Source |
| --- | --- |
| Rob Pike's programming rules: measure before optimizing, prefer simple algorithms/data structures, and let data dominate | [Rob Pike, Notes on Programming in C](http://doc.cat-v.org/bell_labs/pikestyle) |

## User-Requested Requirements

These items are requirements from the project owner and should be implemented only where public technical sources support the mechanics:

- Project name: The Admin Harness.
- Public open-source GitHub repository owned by `github.com/timhaintz`.
- IT-admin-focused agentic harness.
- Include source-backed Microsoft portal discovery.
- Prefer official Microsoft sources and public upstream data.
- Maintain cross-agent portability beyond the first verified hosts.
- Build toward a future shopping-cart/plugin selection experience.

## Source Gaps

- First-class claims for specific non-Copilot/non-Claude hosts need host-specific public docs before they are advertised as supported.
- Provider/model-specific prompt tuning claims need public vendor documentation or eval evidence before they become project guidance.

## Sources

This file is the source index for the repository. Its entries link directly to each upstream source used by the repo. Re-run [../scripts/validate-doc-sources.sh](../scripts/validate-doc-sources.sh) to ensure every Markdown file has a `Sources` section.
