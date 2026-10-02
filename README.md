# The Admin Harness

The Admin Harness is a source-driven agentic resource for IT administrators. It packages Microsoft portal discovery, documentation-grounded admin workflows, MCP configuration examples, Agent Skills, safety policies, and research across systems, networking, databases, cloud infrastructure, and tool creation for agents such as VS Code GitHub Copilot, Copilot CLI, Copilot cloud agent, Claude Code, Microsoft Scout, and other Agent Skills-compatible hosts.

This project is intended to be public open source. Everything committed here should be safe for public viewing: no tenant IDs, admin credentials, tokens, `.env` files, browser profiles, customer data, or generated credential caches.

Start with [PRD.md](PRD.md) for product scope and [AGENTS.md](AGENTS.md) for agent operating rules.

Run `scripts/validate-skills.sh`, `scripts/validate-doc-sources.sh`, `scripts/validate-portal-skills.sh`, and `bash scripts/validate-script-safety.sh` before treating skill, portal-skill, documentation, or script-adjacent changes as complete. Pull requests also run validation and GitHub CodeQL/code scanning checks.

Portal-specific skill coverage is tracked in [docs/portal-skill-coverage.md](docs/portal-skill-coverage.md), and the reusable template is [docs/portal-skill-template.md](docs/portal-skill-template.md).

Agent host compatibility, including how Microsoft Scout can use the harness as an Agent Skills-based admin augmentation layer, is described in [docs/agent-host-compatibility.md](docs/agent-host-compatibility.md).

Official and Microsoft-owned upstream skill sources are tracked in [docs/upstream-skill-register.md](docs/upstream-skill-register.md). New local skills should reference or route to upstream skills when they already cover a workflow.

PowerShell, shell, and Microsoft Graph request safety standards are documented in [docs/script-safety.md](docs/script-safety.md).

Contributions should follow [CONTRIBUTING.md](CONTRIBUTING.md): branch per change, pull request before merge, green checks first, and full merge commits only.

## Current Status

This repo is in an early public preview phase. It includes cross-agent instructions, Agent Skills, evaluations, MCP configuration templates, source-backed portal coverage tracking, and an initial batch of common Microsoft admin portal skills. It does not yet execute Microsoft tenant changes.

The [administration domain catalog](docs/admin-domain-catalog.md) covers systems and services, networking, databases, cloud and infrastructure, and tool creation, with five organisations per area. [Skill coverage](docs/admin-skill-coverage.md) maps five area routers and all 25 organisation routes; Azure reuses its existing safety skill. New skills use only official vendor/upstream product sources and route to [officially published MCP servers](docs/official-mcp-catalog.md) where verified, with documentation fallback where availability is unverified.

The shortlists are editorial coverage choices, not market-share rankings. Skills and eval fixtures are authored guidance; they do not install tools or certify target integration, provisioning or a ready-to-run desktop. [Validation evidence](docs/evals/admin-domain-validation.md) records 124 final reviewed model-only fixture passes across 45 skills, structural checks and ten native public queries across five official MCP servers. Native HTTP discovery templates are linked from [MCP setup](mcp/README.md).

## Design Principles

- Source-backed data over hard-coded portal lists.
- Skills for reusable capability, MCP profiles for executable integrations, plugins for installable bundles.
- Human approval before privileged admin actions.
- Evals before treating skills as complete.
- Simple data structures and procedures first.

## License

This project is licensed under the [MIT License](LICENSE).

## Sources

The source register is [docs/source-register.md](docs/source-register.md). Key upstream sources include [Agent Skills](https://agentskills.io/home), [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills), [GitHub Copilot repository instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot), [Claude Code settings](https://code.claude.com/docs/en/settings), [Microsoft Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp-get-started), [Azure MCP](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/), [microsoft/skills](https://github.com/microsoft/skills), [microsoft/azure-skills](https://github.com/microsoft/azure-skills), [msportals.io source data](https://github.com/adamfowlerit/msportals.io), and the [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18).
