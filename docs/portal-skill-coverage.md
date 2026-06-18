# Portal Skill Coverage

This tracker records portal-specific skill coverage against source-backed `msportals.io` entries. A checked row means the portal has a valid skill artifact, Microsoft Learn MCP or official documentation grounding where applicable, and eval coverage.

## Coverage Rules

- Track source JSON and upstream `portalName` for every row.
- Use deterministic skill names from [portal-skill-template.md](portal-skill-template.md).
- Microsoft-owned portal skills must include Microsoft Learn MCP or official Microsoft documentation grounding.
- Third-party helper portal skills must include a third-party ownership caveat.
- Portal skill completion requires `scripts/validate-skills.sh`, `scripts/validate-doc-sources.sh`, and `scripts/validate-portal-skills.sh`.

## High-Value Admin Portal Batch

| Done | Portal | Source JSON | Primary URL | Skill path | Learn MCP grounding | Evals |
| --- | --- | --- | --- | --- | --- | --- |
| [x] | Microsoft 365 Admin Center | `admin.json` | `https://admin.cloud.microsoft` | `.github/skills/portal-microsoft-365-admin-center/` | [x] | [x] |
| [x] | Microsoft Intune Admin Center | `admin.json` | `https://intune.microsoft.com` | `.github/skills/portal-microsoft-intune-admin-center/` | [x] | [x] |
| [x] | Microsoft Entra Admin Center | `admin.json` | `https://entra.microsoft.com` | `.github/skills/portal-microsoft-entra-admin-center/` | [x] | [x] |
| [x] | Exchange Admin Center (EAC) | `admin.json` | `https://admin.cloud.microsoft/exchange#/homepage` | `.github/skills/portal-exchange-admin-center/` | [x] | [x] |
| [x] | Microsoft Teams Admin Center | `admin.json` | `https://admin.teams.microsoft.com` | `.github/skills/portal-microsoft-teams-admin-center/` | [x] | [x] |
| [ ] | SharePoint Admin Center | `admin.json` | `https://admin.microsoft.com/sharepoint` | `.github/skills/portal-sharepoint-admin-center/` | [ ] | [ ] |
| [ ] | Microsoft Purview | `admin.json` | `https://purview.microsoft.com/` | `.github/skills/portal-microsoft-purview/` | [ ] | [ ] |
| [ ] | Microsoft 365 Defender | `admin.json` | `https://security.microsoft.com` | `.github/skills/portal-microsoft-365-defender/` | [ ] | [ ] |
| [ ] | Power Platform admin center | `admin.json` | `https://admin.powerplatform.microsoft.com` | `.github/skills/portal-power-platform-admin-center/` | [ ] | [ ] |
| [ ] | Microsoft Azure Portal | `admin.json` | `https://portal.azure.com` | `.github/skills/portal-microsoft-azure-portal/` | [ ] | [ ] |

## Upstream Group Coverage

| Done | Group | Source | Notes |
| --- | --- | --- | --- |
| [ ] | Admin portals | `admin.json` | Start here; includes the high-value admin batch. |
| [ ] | End-user portals | `user.json` | Cover after admin portal workflow is proven. |
| [ ] | Third-party helper portals | `thirdparty.json` | Require third-party caveats. |
| [ ] | Education portals | `edu.json` | Include education tenant caveats where applicable. |
| [ ] | US government portals | `us-govt.json` | Include sovereign cloud caveats. |
| [ ] | China / 21Vianet portals | `china.json` | Include China cloud caveats. |
| [ ] | Training portals | `training.json` | Likely lower risk; still source-backed. |
| [ ] | Licensing portals | `licensing.json` | Include billing/licensing risk boundaries. |
| [ ] | Consumer portals | `consumer.json` | Separate consumer from tenant admin guidance. |

## Status Legend

- `[ ]` not started.
- `[x]` complete and validated.
- `N/A` not applicable, with a reason in notes.
- `source gap` no official Microsoft Learn or Microsoft documentation found yet.

## Sources

- [portal-skill-template.md](portal-skill-template.md)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [adamfowlerit/msportals.io](https://github.com/adamfowlerit/msportals.io)
- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [microsoft-portal-navigation source map](../.github/skills/microsoft-portal-navigation/references/portal-sources.md)
- [docs/source-register.md](source-register.md)
