# The Admin Harness

The Admin Harness is a source-driven agentic resource for IT administrators. It packages Microsoft portal discovery, documentation-grounded admin workflows, MCP configuration examples, Agent Skills, and safety policies for agents such as VS Code GitHub Copilot, Copilot CLI, Copilot cloud agent, Claude Code, OpenClaw, Hermes, and other Agent Skills-compatible hosts.

This project is intended to be public open source. Everything committed here should be safe for public viewing: no tenant IDs, admin credentials, tokens, `.env` files, browser profiles, customer data, or generated credential caches.

Start with [PRD.md](PRD.md) for product scope and [AGENTS.md](AGENTS.md) for agent operating rules.

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
