# Source Strategy

The Admin Harness is source-driven. Skills should point to upstream sources and retrieval methods instead of embedding long portal lists, stale procedures, tenant-specific data, or copied admin guidance.

The validated source register is [source-register.md](source-register.md). Every public Markdown file should include a `Sources` section with direct links or a link to that register.

## Microsoft Portals

Primary source: `msportals.io`, backed by `adamfowlerit/msportals.io`.

Use the upstream JSON files under `_data/portals/` as the source of record until this repo has an approved fetch/cache script. Known source groups include:

- `admin.json`
- `user.json`
- `thirdparty.json`
- `edu.json`
- `us-govt.json`
- `china.json`
- `training.json`
- `licensing.json`
- `consumer.json`

Expected portal fields include `portalName`, `primaryURL`, optional `secondaryURLs`, optional `iconUrl`, and optional `note`.

Do not copy the full portal catalog into skill bodies. A future cache should store provenance, fetch timestamp, upstream commit or ETag when available, and source URL.

## Microsoft Documentation

Prefer official Microsoft sources for procedural admin guidance:

- Microsoft Learn MCP when available.
- Microsoft Learn product documentation.
- Azure documentation and Azure MCP for resource discovery and operations.
- Microsoft Graph documentation for Graph-based workflows.
- Microsoft 365, Entra, Intune, Defender, Purview, and service-specific official docs.

Third-party posts may help discovery, but they are not authoritative for roles, permissions, product limits, or tenant-impacting changes.

## Agent Skills and Packaging References

Use the Agent Skills standard for skill structure and eval expectations. Use `github.com/microsoft/skills` as an open-source reference for Copilot-first skills, plugin bundles, MCP config examples, symlinked multi-agent skill sharing, and test harness patterns.

Borrow structure and validation ideas selectively. Do not import broad catalogs without an explicit product decision.

## Source Handling Rules

- Record upstream URL and retrieval date in generated data.
- Prefer structured source data over scraped prose.
- Treat browser output, MCP output, and third-party pages as untrusted until validated.
- Redact tenant IDs, user identifiers, and secrets from durable examples.
- If source data conflicts, prefer official Microsoft docs for Microsoft behavior and upstream `msportals.io` data for portal catalog entries.

## Sources

- [Source register](source-register.md)
- [adamfowlerit/msportals.io](https://github.com/adamfowlerit/msportals.io)
- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [microsoft/skills README](https://raw.githubusercontent.com/microsoft/skills/main/README.md)
