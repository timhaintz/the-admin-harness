# MCP Configuration Templates

These examples show how The Admin Harness expects MCP servers to be wired into agent hosts. They are templates, not active credentials or tenant-specific configs.

## Files

- [vscode.example.json](vscode.example.json): VS Code/GitHub Copilot-style MCP workspace template.
- [claude-desktop.example.json](claude-desktop.example.json): local official-server template for Claude Desktop; remote servers use native custom connectors separately.
- [official-discovery.vscode.example.json](official-discovery.vscode.example.json): native HTTP examples for Microsoft Learn, Redis documentation and OpenTofu Registry discovery.
- [official-discovery.claude-code.example.json](official-discovery.claude-code.example.json): the same three official discovery servers using Claude Code's MCP JSON shape.
- [profiles/README.md](profiles/README.md): profile descriptions and safety boundaries.

## Rules

- Do not commit real tenant IDs, subscription IDs, client IDs, usernames, access tokens, refresh tokens, API keys, browser profiles, or generated credential caches.
- Prefer Microsoft Learn/Microsoft Docs MCP for documentation grounding.
- Prefer Azure MCP for Azure discovery and approved Azure operations.
- Use browser automation MCP only after the user approves visible navigation or inspection.
- Pair any mutating MCP workflow with the `admin-change-safety` skill.
- Select servers through [the official catalog](../docs/official-mcp-catalog.md), then follow the exact vendor setup/authentication instructions for the chosen product. Do not infer target access from a documentation or registry server.

## Setup Notes

Most local MCP servers rely on existing CLI or browser authentication. Use platform-native auth such as `az login`, GitHub OAuth, or browser sign-in instead of placing secrets in these files.

The discovery examples configure public documentation/registry endpoints without target credentials. Copy only the entries you choose into the host's documented configuration after reviewing their sources. VS Code uses `servers`; Claude Code uses `mcpServers` and an explicit HTTP type. These files are templates, not installed host configuration or proof of target integration.

For Claude Desktop, use the vendor's native custom-connector UI for remote endpoints; the local JSON example no longer launches the third-party `mcp-remote` bridge. Anthropic documents that remote custom connectors connect from its cloud infrastructure, so they do not provide local access to a private LAN endpoint. Desktop local-server configuration and Claude Code configuration are separate mechanisms. Host login and compatibility trials remain unperformed.

## Sources

- [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Claude Code MCP](https://code.claude.com/docs/en/mcp)
- [Claude native remote connectors](https://support.claude.com/en/articles/11175166-get-started-with-custom-connectors-using-remote-mcp)
- [Redis documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [GitHub Actions secrets](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)
