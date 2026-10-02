---
name: microsoft-portal-navigation
description: Find and verify Microsoft admin, end-user, training, licensing, sovereign cloud, and third-party helper portal URLs from source-backed catalog data. Use when the user asks where to manage a Microsoft service, asks for a portal link, mentions msportals.io, or needs tenant-aware portal navigation.
compatibility: Works in VS Code Copilot, Copilot CLI, Copilot cloud agent, Claude Code, and other Agent Skills-compatible hosts.
---

# Microsoft Portal Navigation

Use this skill to locate Microsoft portal links without inventing or hard-coding URLs.

## Workflow

1. Identify the product area, admin task, cloud type, and whether the user needs admin, end-user, training, licensing, government, China, or third-party portals.
2. For Microsoft 365 GCC, distinguish its Microsoft Entra Public identity from GCC High/DoD Microsoft Entra Government. Confirm the actual tenant identity cloud; a separate Azure Government subscription can use a different tenant. Do not select a government identity endpoint merely from “GCC”. Use Microsoft’s identity guidance to resolve conflicting catalog labels.
3. Consult the source map in [references/portal-sources.md](references/portal-sources.md).
4. Prefer upstream `msportals.io` JSON source files over prose snippets.
5. If several portals match, return the best 2-4 candidates with names, primary URLs, notes, and why each candidate fits.
6. If the user asks for tenant-specific links, hand off to the `tenant-aware-admin` skill or include the tenant privacy warning from the source map.
7. If the portal task requires procedural guidance, hand off to `microsoft-learn-research` after locating the portal.

## Output

Return:

- Portal name.
- Primary URL.
- Secondary URLs only when useful, such as `aka.ms` or old/new portal links.
- Source used.
- Caveat if the portal is third-party, legacy, government, China, or tenant-specific.

## Guardrails

- Do not fabricate portal URLs.
- Do not ask for or store tenant IDs unless the user explicitly provides one for URL construction.
- Do not treat third-party helper sites as Microsoft-owned.
- If source data is unavailable, say what source could not be checked and give a cautious next step.

## Sources

- [Microsoft GCC versus GCC High/DoD identity authority](https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-plan-identity)
- [Microsoft Graph national cloud endpoint distinctions](https://learn.microsoft.com/en-us/graph/deployments)
- [references/portal-sources.md](references/portal-sources.md)
- [adamfowlerit/msportals.io](https://github.com/adamfowlerit/msportals.io)
- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [docs/source-register.md](../../../docs/source-register.md)
