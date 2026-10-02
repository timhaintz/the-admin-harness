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

## Five-Server Release Check

The owner selected the PR #16 documentation/skills release: all skill fixtures and bounded public MCP queries. Operational integrations and desktop delivery remain future milestones.

The three additional official public URLs were added through the native Codex CLI: Microsoft Learn, Cisco DevNet Content Search and AWS Knowledge. A secure local configuration backup preceded the changes; semantic comparison confirmed that only these three entries were added and existing settings were preserved. No credentials, AWS account, network devices or database instances were used.

Fresh native discovery on **macOS 27.0.1, arm64, Codex CLI 0.159.2** advertised 21 tools across five servers. Ten successful public calls covered nine distinct tools; they were selected from advertised schemas before invocation. This is bounded query coverage, not exhaustive certification of every advertised tool.

| Official server | Discovered release / tools | Measured public queries |
| --- | --- | --- |
| Microsoft Learn | `Microsoft Learn MCP Server` 1.0.0; 3 tools | Azure RBAC search returned 10 matches; retrieval of its selected best-practices page returned 5,421 characters. |
| Cisco DevNet | `DevNet Content Retriever` 1.24.0; 3 tools | Meraki keyword search returned 3 references, exact operation lookup returned 1 matching L3-firewall reference, and Catalyst Center inventory search returned 3 references. All returned URLs were Cisco documentation. No device API was called. |
| AWS Knowledge | `AWSKnowledgeMCP` 1.0.0; 5 tools | Two searches each returned 3 official SDK references but lacked the requested ownership detail. Direct retrieval of two selected official pages returned `SUCCESS`; the REST reference supplied the missing ownership requirement. Search relevance is a recorded limitation. |
| Redis Docs | `redis-docs-mcp` `53c2309e3ad9de8843a4f7f24926063de2725942`; 3 tools | EXPIRE search returned 8 documentation matches, including the official command reference. |
| OpenTofu Registry | `@opentofu/opentofu-mcp-server` 1.0.1; 7 tools | `hashicorp/random` lookup returned 42 versions, latest `v3.9.1` at test time. No provider was installed or executed. |

[The sanitized public-call record](admin-domain-public-mcp-results.json) preserves server versions, exact tools/arguments, counts, official result URLs and response hashes without copying full documentation, host paths, thread identifiers or private configuration. Raw response captures remained local. No MCP error or JSON-RPC error occurred in the ten calls. AWS's Codex auth-status field was `unknown`; actual public calls required no authentication, consistent with AWS's documented account-free service. The other four fields were `unsupported`.

The tests ran during this work through a **separate short-lived native Codex app-server**, using ephemeral in-memory contexts and no model turn or saved chat. This already-running chat's injected tool inventory did not acquire the new namespaces. No supported exposed connection was found for its gentle reload RPC; the desktop **Restart** control stops its backend. Activation inside this chat therefore remains unverified until a refreshed turn exposes and calls the tools. Registration, native-client connectivity and active-chat exposure are distinct results. See [setup instructions](../../mcp/README.md).

AWS Knowledge's official publisher does not make all returned sources official: its index includes community material. The skill requires publisher verification and excludes third-party/community references from authoritative guidance. Managed AWS authentication/account tooling remains separate and untested.

## Skill Validation Scope

The repository's skill validator checks names, frontmatter and eval JSON structure. The skill-creator validator additionally parses new frontmatter and checks unfinished scaffold content. Documentation checks cover Sources sections, relative links, source-index coverage and whitespace; JSON checks cover all four MCP example files. These checks do not execute described admin workflows.

Independent model-only forward trials use synthetic requests and relevant authored skill files. Response agents receive prompts without expected answers/assertions; separate reviewers then assess the responses against those criteria. They do not install packages, sign in, access target devices/databases/cloud accounts, run generated programs, spend money or perform target changes. Initial trials share project context; later response agents started without conversation history. These qualitative trials do not establish actual host skill auto-selection, permission enforcement, program correctness or target outcomes. The precise model build is not recorded, so this is not a statistical model benchmark.

The earlier [selected trial record](admin-domain-forward-trials.json) retains 32 initial cases and two repeats. It exposed missing separate traffic-health and restored-data verification criteria; those guidance gaps were refined before the full-suite run.

The full 124-case review found nine response omissions: SUSE preview maturity, explicit approval for Azure RBAC/Policy, Azure assessment permission gaps, Microsoft 365 domain setup methods, Purview tenant navigation, Power Platform role names, skill eval artifact path and the requested tenant-link/source-verification result. Guidance was clarified without relaxing these criteria, and every case in the affected skills was repeated. Repeats exposed two portal-entry provenance omissions and a persistent ambiguity over fictional versus private tenant identifiers; those were clarified and retained for review as well. Initial responses and reviews are retained alongside final results.

The full review also found an invalid existing `portal-gcc-entra` fixture: it expected a government identity endpoint merely from Microsoft 365 GCC. Microsoft's identity documentation distinguishes GCC's Microsoft Entra Public tenant from GCC High/DoD Microsoft Entra Government; a separate Azure Government subscription can have a separate tenant. The skill and fixture were corrected against these official sources, with the original expectation retained in the full-suite evidence. Criteria were corrected for factual accuracy, not relaxed to match a response.

## Recorded Results

The [full-suite response and assertion record](admin-domain-full-fixture-trials.json) contains 171 responses: 124 initial cases and 47 repeats covering 34 distinct cases. All 124 final cases pass their reviewed criteria. It retains nine initial gaps and three repeat gaps, plus the original invalid GCC expectation and its source-backed correction. Exact intermediate guidance snapshots are not retained; per-case hashes identify the final skill/fixture artifacts. Stored evidence normalizes temporary checkout links and replaces fictional tenant UUIDs with placeholders after grading the local originals.

| Release check | Recorded result | Limit |
| --- | --- | --- |
| Skill fixtures | 45 skills, 124 cases; 124 final reviewed passes | Synthetic model-only responses; precise model build not recorded |
| Repository validators | Skill structure, documentation sources, portal skills and script safety passed | Structural/source-policy checks, not workflow execution |
| Skill-creator validation | All 29 new skills passed; revised AWS and SUSE skills rechecked | Existing compatibility frontmatter is checked by the repository validator |
| MCP templates and evidence | Four example files parse; full-suite coverage/hashes and public-query counts checked | Templates do not activate servers in every host |
| Documentation consistency | Relative links, heading anchors and whitespace checked | External service availability can change |
| Native public MCP queries | Five servers, 21 advertised tools, 10 successful calls covering 9 distinct tools | macOS native client only; active-chat exposure and the other tools remain unverified |

These checks complete the selected documentation/skills and public-query validation scope for PR #16. GitHub validation and CodeQL must also pass on the pushed revision before merging.

No authenticated operational integration, role-denial enforcement, backup recovery, privileged operation, Windows/Omarchy delivery or identical desktop experience was tested. These future milestones need authorised disposable environments and independent state/health evidence.

## Sources

- [Microsoft Learn official MCP setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Cisco DevNet official content-search setup](https://github.com/CiscoDevNet/devnet-content-search-mcp)
- [AWS Knowledge official scope, sources and account-free setup](https://awslabs.github.io/mcp/servers/aws-knowledge-mcp-server)
- [Redis official documentation MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [OpenTofu official MCP](https://github.com/opentofu/opentofu-mcp-server)
- [Official Codex MCP configuration](https://learn.chatgpt.com/docs/extend/mcp)
- [Official Codex app-server API](https://learn.chatgpt.com/docs/app-server)
- [Cloudflare error 1010](https://developers.cloudflare.com/support/troubleshooting/http-status-codes/cloudflare-1xxx-errors/error-1010/)
- [Microsoft GCC identity versus GCC High/DoD](https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-plan-identity)
- [Microsoft Graph national-cloud endpoint distinctions](https://learn.microsoft.com/en-us/graph/deployments)
- [Domain skill coverage and fixtures](../admin-skill-coverage.md)
- [Official MCP catalog](../official-mcp-catalog.md)
- [Source register](../source-register.md)
