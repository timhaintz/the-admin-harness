# Administration Domain Validation

Date: 2 October 2026. This record separates authored skill/eval artifacts, structural validation, model-only forward trials and actual MCP/target tests. It does not certify an admin workstation or a protected execution boundary.

## Public MCP Protocol Checks

A local Python HTTP client attempted MCP `initialize`, followed on successful negotiation by `notifications/initialized` and `tools/list`. The requests used protocol version `2025-06-18`, supplied no credentials and invoked no target tools. Only response IDs, negotiated protocol and bounded tool metadata were inspected. The probes occurred at approximately 12:47 Australia/Melbourne time on 2 October 2026.

| Official endpoint | Observed result | Limit |
| --- | --- | --- |
| Microsoft Learn: `https://learn.microsoft.com/api/mcp` | Initialization and tool listing passed; negotiated `2025-06-18`, three tools, no continuation page. | Metadata connectivity only; no documentation tool invocation or configured desktop-host test. |
| Redis Docs: `https://redis.io/mcp` | Initialization returned HTTP 403 from this environment. | Connection unverified; the cause was not determined. Official publication does not establish local reachability. |
| OpenTofu Registry: `https://mcp.opentofu.org/mcp` | Initialization returned HTTP 403 from this environment. | Connection unverified; no tool metadata or registry query obtained. This is not evidence that the official server does not exist. |

Microsoft Learn advertised `microsoft_docs_search`, `microsoft_code_sample_search` and `microsoft_docs_fetch`. This result establishes that the official endpoint accepted the narrow protocol exchange at the recorded time; it does not establish operational target access, host login, continued availability or safety of imported content. The two HTTP errors were retained as gaps rather than reported as passes.

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
| Public protocol probes | Microsoft Learn metadata exchange passed. Redis Docs and OpenTofu initialization returned HTTP 403; those connections remain unverified. |

The initial Cisco response omitted a separate traffic-health check, and the initial unknown-restore response omitted a separate verification destination and explicit data checks. The corresponding guidance was clarified; both repeat responses covered those criteria. [The synthetic trial record](admin-domain-forward-trials.json) preserves initial gaps, final responses, prompts and reviewed assertions.

This is qualitative skill-decision review, not a statistical model benchmark. The reviewers shared project context; model versions were not recorded, and remaining fixture cases were not executed. These trials cannot demonstrate actual tool selection in a configured host, permission enforcement, program correctness or target outcomes. Synthetic responses are evidence of this narrow evaluation, not authority to act on real targets.

No Omarchy, Mac/Windows host configuration, authenticated target integration, role-denial enforcement, backup recovery or privileged operation was tested by this update. Each needs an authorised disposable environment and independent state/health evidence before support is advertised.

## Sources

- [Microsoft Learn official MCP setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Redis official documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [Domain skill coverage and fixtures](../admin-skill-coverage.md)
- [Official MCP catalog](../official-mcp-catalog.md)
- [Source register](../source-register.md)
