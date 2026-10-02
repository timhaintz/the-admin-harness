# Administration Domain Validation

Date: 2 October 2026. This record separates authored skill/eval artifacts, structural validation, model-only forward trials and actual MCP/target tests. It does not certify an admin workstation or a protected execution boundary.

## Public MCP Protocol Checks

A local Python HTTP client attempted MCP `initialize`, followed on successful negotiation by `notifications/initialized` and `tools/list`. The requests used protocol version `2025-06-18`, supplied no credentials and invoked no target tools. Only response IDs, negotiated protocol and bounded tool metadata were inspected. The probes occurred at approximately 12:47 Australia/Melbourne time on 2 October 2026.

| Official endpoint | Observed result | Limit |
| --- | --- | --- |
| Microsoft Learn: `https://learn.microsoft.com/api/mcp` | Initialization and tool listing passed; negotiated `2025-06-18`, three tools, no continuation page. | Metadata connectivity only; no documentation tool invocation or configured desktop-host test. |
| Redis Docs: `https://redis.io/mcp` | Python initialization returned HTTP 403. | That client did not establish connectivity. The later native Codex test below passed. |
| OpenTofu Registry: `https://mcp.opentofu.org/mcp` | Python initialization returned HTTP 403. | That client obtained no tool metadata or registry result. The later native Codex test below passed. |

Microsoft Learn advertised `microsoft_docs_search`, `microsoft_code_sample_search` and `microsoft_docs_fetch`. This result establishes that the official endpoint accepted the narrow protocol exchange at the recorded time; it does not establish operational target access, host login, continued availability or safety of imported content. The two HTTP errors were retained as gaps rather than reported as passes.

## Native Codex Follow-Up

On 2 October 2026, follow-up Python error-body inspection found Cloudflare error **1010** at both Redis Docs and OpenTofu: access denied based on the test client's browser signature. The exact triggering rule was not established. No credentials were requested by those error responses, and they did not establish MCP server absence.

The user authorised adding both published URLs through `codex mcp add ... --url ...`. The installed macOS Codex CLI **0.159.2** saved both global Streamable HTTP entries. Existing settings were preserved, with the CLI omitting an equivalent empty argument list. An isolated, short-lived `codex app-server` then performed native MCP discovery and direct tool calls through the documented app-server API.

| Official server | Native discovery | Public tool-call result |
| --- | --- | --- |
| Redis Docs | `redis-docs-mcp`, version `53c2309e3ad9de8843a4f7f24926063de2725942`; three tools: `search`, `fetch`, `ask`. | `search` with the synthetic query `EXPIRE key expiration` returned eight documentation matches, including the official EXPIRE reference; no tool error. |
| OpenTofu Registry | `@opentofu/opentofu-mcp-server`, version `1.0.1`; seven tools. | `get-provider-versions` for `hashicorp/random` returned 42 versions and latest `v3.9.1` at test time; no tool error. |

Neither server required an authentication flow. The direct calls used a temporary in-memory context, started no model turn and created no saved chat. Two initial harness attempts failed before any tool call because of temporary context/configuration errors; using an isolated workspace resolved them. The native tests did not forge client headers or alter the endpoints' security settings.

This proves native Codex connection, tool discovery and the two bounded public queries on the tested Mac. It does not prove availability inside the already-running chat's tool catalog, Windows compatibility, Omarchy delivery, agent skill selection, target access or future availability. Public discovery services have no authority over a user's Redis instance or deployed OpenTofu infrastructure. The initial Python failures remain part of the evidence.

## Skill Validation Scope

The repository's skill validator checks names, frontmatter and eval JSON structure. The skill-creator validator additionally parses the new frontmatter and checks unfinished scaffold content. Documentation checks cover Sources sections, relative links, source-index coverage and whitespace; JSON checks cover all four MCP example files. These checks do not execute the workflows described by the skills.

Independent model-only forward trials used synthetic requests and the relevant authored skill files. They did not install product packages, sign in, access devices/databases/cloud accounts, run generated programs, spend money or perform target changes. The three reviewers evaluated skills authored by other contributors, received prompts without expected answers, and returned responses for parent review against fixture assertions.

## Recorded Results

| Check | Result and scope |
| --- | --- |
| Repository skill validation | 45 skills with 123 eval definitions structurally valid; 29 skills and 62 eval definitions added by this follow-up. |
| Skill-creator validation | All 29 new skills passed frontmatter/name/scaffold checks using an isolated temporary YAML-parser environment. |
| Documentation validation | Sources sections passed across 91 Markdown files; relative links/anchors and new source-index coverage checked. |
| Existing portal and script checks | 10 portal skills and 3 script/request artifacts passed their repository checks. |
| MCP templates | All four examples parsed; CI now checks every MCP example file. Templates were not installed in a host. |
| Model-only trials | One selected case for each of 30 area/organisation routes, plus safety and authoring: 32 reviewed responses. Two guidance gaps were refined and their cases repeated; final responses met the selected criteria. |
| Public protocol probes | Microsoft Learn metadata exchange passed. Python probes of Redis Docs and OpenTofu returned HTTP 403; follow-up identified Cloudflare error 1010. Native Codex discovery and one public query per server subsequently passed. |

The initial Cisco response omitted a separate traffic-health check, and the initial unknown-restore response omitted a separate verification destination and explicit data checks. The corresponding guidance was clarified; both repeat responses covered those criteria. [The synthetic trial record](admin-domain-forward-trials.json) preserves initial gaps, final responses, prompts and reviewed assertions.

This is qualitative skill-decision review, not a statistical model benchmark. The reviewers shared project context; model versions were not recorded, and remaining fixture cases were not executed. These trials cannot demonstrate actual tool selection in a configured host, permission enforcement, program correctness or target outcomes. Synthetic responses are evidence of this narrow evaluation, not authority to act on real targets.

Beyond the narrow native Codex configuration and public-query tests above, no Omarchy or Windows host configuration, authenticated target integration, role-denial enforcement, backup recovery or privileged operation was tested. Each needs an authorised disposable environment and independent state/health evidence before support is advertised.

## Sources

- [Microsoft Learn official MCP setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Redis official documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [Official Codex MCP configuration](https://learn.chatgpt.com/docs/extend/mcp)
- [Official Codex app-server API](https://learn.chatgpt.com/docs/app-server)
- [Cloudflare error 1010](https://developers.cloudflare.com/support/troubleshooting/http-status-codes/cloudflare-1xxx-errors/error-1010/)
- [Domain skill coverage and fixtures](../admin-skill-coverage.md)
- [Official MCP catalog](../official-mcp-catalog.md)
- [Source register](../source-register.md)
