# MCP Profiles

MCP profiles describe executable integrations that an agent host can use. They are separate from skills: skills tell the agent how to behave, while MCP servers provide tools and resources.

## Initial Profiles

- Documentation profile: Microsoft Learn or Microsoft Docs MCP for official product guidance.
- Azure profile: Azure MCP for read-first Azure resource inspection and approved operations.
- Repository profile: GitHub MCP for issues, pull requests, workflows, and source lookup.
- Browser profile: Playwright or browser automation MCP for approved visual inspection and navigation.

## Safety Defaults

- Templates must use placeholder environment variables only.
- No tenant IDs, subscription IDs, client IDs, usernames, tokens, or secrets in committed examples.
- Mutating tools must be paired with the `admin-change-safety` skill and an approval gate.
- Prefer read-only mode or read-before-write workflows where the server supports it.

## Host Targets

- VS Code and GitHub Copilot: `.vscode/mcp.json` or documented per-user/workspace MCP config.
- Claude Desktop or Claude Code: Claude-specific MCP config examples with the same placeholder values.
- Future plugin bundles: package MCP profiles with the relevant skills and policy pack.

See [../mcp/README.md](../mcp/README.md) for example configuration files.
