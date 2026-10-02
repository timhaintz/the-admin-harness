# MCP Profiles

Profiles group MCP servers by workflow. They should be installed selectively.

## Documentation Profile

Use for source-grounded answers. Initial server: Microsoft Docs/Learn MCP.

Risk tier: `read`.

## Azure Admin Profile

Use for Azure resource discovery, diagnostics, and approved operations. Initial server: Azure MCP.

Risk tiers: `diagnostic`, `plan`, `change` when explicitly approved.

## Repository Profile

Use for GitHub repo inspection, issues, PRs, and workflows. Initial server: GitHub MCP.

Risk tiers: `read`, `diagnostic`, `change` only for approved repo mutations.

## Browser Profile

Use for visible portal navigation and inspection after user approval. Initial server: Microsoft's official Playwright MCP. Additional servers must pass the official publisher requirement in [the catalog](../../docs/official-mcp-catalog.md).

Risk tiers: `read`, `diagnostic`; never silent credential entry.

## Broader Domain Profiles

Use [the official MCP inventories](../../docs/official-mcp-catalog.md) to select product-specific documentation, systems, network, database, cloud and authoring tools. Follow each vendor's setup and authority boundary; choosing a skill does not prepare every server in that area. The [discovery examples](../README.md) provide native HTTP templates for three official public documentation/registry endpoints. Target connectors remain separately configured and untested.

## Sources

- [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Claude Code MCP](https://code.claude.com/docs/en/mcp)
- [Claude Code plugins](https://code.claude.com/docs/en/plugins)
