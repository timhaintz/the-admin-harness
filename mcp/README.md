# MCP Configuration Templates

These examples show how The Admin Harness expects MCP servers to be wired into agent hosts. They are templates, not active credentials or tenant-specific configs.

## Files

- [vscode.example.json](vscode.example.json): VS Code/GitHub Copilot-style MCP workspace template.
- [claude-desktop.example.json](claude-desktop.example.json): local official-server template for Claude Desktop; remote servers use native custom connectors separately.
- [official-discovery.vscode.example.json](official-discovery.vscode.example.json): native HTTP examples for Microsoft Learn, Cisco DevNet, AWS Knowledge, Redis documentation and OpenTofu Registry discovery.
- [official-discovery.claude-code.example.json](official-discovery.claude-code.example.json): the same five official discovery servers using Claude Code's MCP JSON shape.
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

### Codex Public Discovery Setup

Codex supports native Streamable HTTP and shares host configuration between its desktop app, CLI and IDE extension. To opt into the five public endpoints in this release scope, add only the entries you want:

```bash
codex mcp add microsoft-learn --url https://learn.microsoft.com/api/mcp
codex mcp add cisco-devnet --url https://devnet.cisco.com/v1/foundation-search-mcp/mcp
codex mcp add aws-knowledge --url https://knowledge-mcp.global.api.aws
codex mcp add redis-docs --url https://redis.io/mcp
codex mcp add opentofu --url https://mcp.opentofu.org/mcp
codex mcp list
```

The CLI saves these entries in the user's Codex configuration; `list` confirms registration, not connectivity. In the desktop app, open **Settings → MCP servers** and select **Restart** after active work finishes to refresh the configured servers; this stops and restarts the backend. Use `/mcp` to inspect connected servers, then request a public Redis documentation search or OpenTofu provider lookup. These endpoints do not require target credentials. AWS Knowledge requires no AWS account or authentication, even if the CLI reports that login may be required. It indexes community material as well as official content: verify returned publishers and exclude third-party/community sources under this project’s official-only rule.

The [measured native Codex test](../docs/evals/admin-domain-validation.md) records successful discovery and bounded public queries for all five servers on macOS with CLI 0.159.2. This is a narrow public-service check, not a database/infrastructure integration or proof that this repository's skill layout is loaded by Codex.

## Sources

- [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Claude Code MCP](https://code.claude.com/docs/en/mcp)
- [Claude native remote connectors](https://support.claude.com/en/articles/11175166-get-started-with-custom-connectors-using-remote-mcp)
- [Cisco DevNet official content-search MCP](https://github.com/CiscoDevNet/devnet-content-search-mcp)
- [AWS Knowledge official setup](https://awslabs.github.io/mcp/servers/aws-knowledge-mcp-server)
- [Redis documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [Official Codex MCP configuration](https://learn.chatgpt.com/docs/extend/mcp)
- [GitHub Actions secrets](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)
