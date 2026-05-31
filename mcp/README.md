# MCP Configuration Templates

These examples show how The Admin Harness expects MCP servers to be wired into agent hosts. They are templates, not active credentials or tenant-specific configs.

## Files

- [vscode.example.json](vscode.example.json): VS Code/GitHub Copilot-style MCP workspace template.
- [claude-desktop.example.json](claude-desktop.example.json): Claude Desktop-style MCP template.
- [profiles/README.md](profiles/README.md): profile descriptions and safety boundaries.

## Rules

- Do not commit real tenant IDs, subscription IDs, client IDs, usernames, access tokens, refresh tokens, API keys, browser profiles, or generated credential caches.
- Prefer Microsoft Learn/Microsoft Docs MCP for documentation grounding.
- Prefer Azure MCP for Azure discovery and approved Azure operations.
- Use browser automation MCP only after the user approves visible navigation or inspection.
- Pair any mutating MCP workflow with the `admin-change-safety` skill.

## Setup Notes

Most local MCP servers rely on existing CLI or browser authentication. Use platform-native auth such as `az login`, GitHub OAuth, or browser sign-in instead of placing secrets in these files.

## Sources

- [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Claude Code MCP](https://code.claude.com/docs/en/mcp)
- [GitHub Actions secrets](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)
