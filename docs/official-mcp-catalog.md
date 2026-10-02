# Official MCP Catalog

Reviewed: 2 October 2026. This catalog admits only MCP implementations published or explicitly documented by the relevant vendor or upstream project. It maps the five domains and 25 organisation entries to exact product coverage, setup sources and authentication prerequisites. No server is installed or enabled by this catalog.

## Publisher And Availability Rules

An official vendor/product page or a verified vendor/upstream-owned repository must establish the implementation and publisher. A search listing, third-party registry, protocol SDK, generic connector capability or an MCP registration API is insufficient. Exclude third-party and community-maintained wrappers, even when they target a shortlisted vendor. Local Admin Harness skills are project-authored wrappers using official references; they are not presented as vendor-authored skills.

An official upstream open-source implementation qualifies even when it is experimental or a reference implementation. Record that status and its stated support boundary; publication does not establish vendor support, production suitability or local compatibility. Where an official implementation could not be verified, retain the official-documentation fallback instead of inventing a package or asserting that no server exists anywhere.

## Domain Inventories

| Domain | Organisation coverage | Detailed inventory |
| --- | --- | --- |
| Systems and services | Broadcom, Canonical, Microsoft, Red Hat, SUSE | [Systems MCPs](mcp-domains/systems-and-services.md) |
| Networking | Arista, Cisco, Fortinet, HPE, Palo Alto Networks | [Network MCPs](mcp-domains/networking.md) |
| Databases | Microsoft, MongoDB, Oracle, PostgreSQL maintainers, Redis | [Database MCPs](mcp-domains/databases.md) |
| Cloud and infrastructure | AWS, Google, IBM, Microsoft, Oracle | [Cloud MCPs](mcp-domains/cloud-and-infrastructure.md) |
| Tool creation | Google, Linux Foundation, Microsoft, Python Software Foundation, Red Hat | [Tool MCPs](mcp-domains/tool-creation.md) |

Follow the linked official setup source for the chosen product rather than assuming a universal endpoint or package. Inspect the current release, exposed tool schema, roles, supported transport and host requirements before configuration. A documentation search server cannot establish server inventory; a registry server cannot deploy a module; a cloud connector does not imply support for an unrelated on-premises product.

## Connection And Execution Boundaries

1. Identify task, exact product/release, environment, target scope and required observation or effect.
2. Match the inventory entry's product capability. Reuse a suitable configured official server or upstream skill; use official documentation when unavailable.
3. Review downloads, package provenance, transport exposure and requested credentials. Use native sign-in and narrow target permissions; keep secrets and state outside public source.
4. Inspect effective tools and installed version. Read-only settings and tool hints need specific verification; diagnostic-looking tools can expose data or cause effects.
5. Use [admin-change-safety](../.github/skills/admin-change-safety/SKILL.md) before privileged target effects. Exact reviewed artifacts, fresh state, independent health checks and unknown-completion reconciliation remain necessary.

The skill layer has no protected execution or authentication boundary. Server identity, workstation login, agent login and target authority remain separate. A model cannot approve its own plan.

## Configurations And Measured Status

- Existing examples cover official Microsoft Learn, Azure, GitHub and Microsoft Playwright servers; they remain opt-in templates.
- New native HTTP [VS Code](../mcp/official-discovery.vscode.example.json) and [Claude Code](../mcp/official-discovery.claude-code.example.json) examples cover official Microsoft Learn, Cisco DevNet, AWS Knowledge, Redis documentation and OpenTofu Registry endpoints. They use no target credentials and do not contain a third-party transport bridge.
- Claude Desktop's local-server example excludes the former third-party bridge. Remote endpoints use the host's native custom-connector path; that path originates from Anthropic's cloud rather than the local LAN. See [host setup notes](../mcp/README.md).
- [Local protocol evidence](evals/admin-domain-validation.md) records the initial Python failures and successful native macOS Codex discovery plus public queries across all five discovery servers. Current-chat tool activation, Windows/Omarchy delivery and privileged target workflows remain untested.

Refreshing product sources and authoring evaluation fixtures does not certify an installation, a paid-service entitlement, an action boundary or a supported Mac/Windows workstation. Record each later target test against the exact server version, host/architecture, principal, scope, tool call and independent result.

## Sources

- [Systems inventory and official references](mcp-domains/systems-and-services.md)
- [Network inventory and official references](mcp-domains/networking.md)
- [Database inventory and official references](mcp-domains/databases.md)
- [Cloud inventory and official references](mcp-domains/cloud-and-infrastructure.md)
- [Tool inventory and official references](mcp-domains/tool-creation.md)
- [Microsoft Learn official setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Cisco DevNet official content search](https://github.com/CiscoDevNet/devnet-content-search-mcp)
- [AWS Knowledge scope and setup](https://awslabs.github.io/mcp/servers/aws-knowledge-mcp-server)
- [Redis documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [GitHub official MCP](https://github.com/github/github-mcp-server)
- [Microsoft Playwright MCP](https://github.com/microsoft/playwright-mcp)
- [Claude native remote connectors](https://support.claude.com/en/articles/11175166-get-started-with-custom-connectors-using-remote-mcp)
- [Source register](source-register.md)
