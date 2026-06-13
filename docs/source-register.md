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
