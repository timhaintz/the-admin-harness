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

Use for visible portal navigation and inspection after user approval. Initial server: Playwright MCP or another browser automation MCP.

Risk tiers: `read`, `diagnostic`; never silent credential entry.
