# The Admin Harness

The Admin Harness is a source-driven agentic resource for IT administrators. It packages Microsoft portal discovery, documentation-grounded admin workflows, MCP configuration examples, Agent Skills, and safety policies for agents such as VS Code GitHub Copilot, Copilot CLI, Copilot cloud agent, Claude Code, and other Agent Skills-compatible hosts.

This project is intended to be public open source. Everything committed here should be safe for public viewing: no tenant IDs, admin credentials, tokens, `.env` files, browser profiles, customer data, or generated credential caches.

Start with [PRD.md](PRD.md) for product scope and [AGENTS.md](AGENTS.md) for agent operating rules.

Run `scripts/validate-skills.sh`, `scripts/validate-doc-sources.sh`, and `scripts/validate-portal-skills.sh` before treating skill, portal-skill, or documentation changes as complete. Pull requests also run validation and GitHub CodeQL/code scanning checks.

Portal-specific skill coverage is tracked in [docs/portal-skill-coverage.md](docs/portal-skill-coverage.md), and the reusable template is [docs/portal-skill-template.md](docs/portal-skill-template.md).

Contributions should follow [CONTRIBUTING.md](CONTRIBUTING.md): branch per change, pull request before merge, green checks first, and full merge commits only.

## Current Status

This repo is in the initial scaffold phase. Milestone 1 focuses on documentation, cross-agent instructions, skills, evaluations, and MCP configuration templates. It does not yet execute Microsoft tenant changes.

## Design Principles

- Source-backed data over hard-coded portal lists.
- Skills for reusable capability, MCP profiles for executable integrations, plugins for installable bundles.
- Human approval before privileged admin actions.
- Evals before treating skills as complete.
- Simple data structures and procedures first.

## License

This project is licensed under the [MIT License](LICENSE).

## Sources

The source register is [docs/source-register.md](docs/source-register.md). Key upstream sources include [Agent Skills](https://agentskills.io/home), [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills), [GitHub Copilot repository instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot), [Claude Code settings](https://code.claude.com/docs/en/settings), [Microsoft Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp-get-started), [Azure MCP](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/), [msportals.io source data](https://github.com/adamfowlerit/msportals.io), and the [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18).
