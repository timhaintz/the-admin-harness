# Packaging Model

The Admin Harness separates capability, execution, policy, and distribution.

## Layers

- Skills: atomic agent capabilities under `.github/skills/`.
- MCP profiles: executable tool and resource integrations under `mcp/`.
- Policy packs: risk posture, approval requirements, logging rules, and tenant boundaries.
- Plugins: installable bundles containing selected skills, agents, commands, MCP profiles, and docs.
- Registry or catalog: shopping-cart selection surface for admins.

## Initial Direction

Milestone 1 stays repo-local and source-driven. It should work directly in VS Code GitHub Copilot and remain understandable to Claude Code and other Agent Skills-compatible hosts after their public docs validate the adapter path.

Milestone 2 can add a neutral manifest that describes bundles such as portal discovery, Azure admin, Microsoft 365 admin, security admin, and MSP multi-tenant operations.

Milestone 3 can package those bundles as plugins or catalog entries.

## Reference Pattern

`github.com/microsoft/skills` is the closest open-source model for this ecosystem. It shows:

- `.github/skills/` as the Copilot-first skills surface;
- `.github/plugins/` for curated installable bundles;
- `.github/agents/` and `.github/prompts/` for optional agent and prompt assets;
- `.vscode/mcp.json` for MCP examples;
- symlinked skill sharing into `.claude/skills` and other agent directories;
- tests with acceptance criteria and scenarios.

The Admin Harness should use this pattern for structure, not as permission to load every available skill. Selective installation matters because loading too many skills dilutes the agent context.

## Sources

- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Claude Code plugins](https://code.claude.com/docs/en/plugins)
- [Claude Code skills](https://code.claude.com/docs/en/skills)
- [microsoft/skills README](https://raw.githubusercontent.com/microsoft/skills/main/README.md)
- [github/awesome-copilot](https://github.com/github/awesome-copilot)
