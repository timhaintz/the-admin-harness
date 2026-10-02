# Official cloud and infrastructure MCP source map

Checked: 2026-10-02. Status: publisher/source verification and local routing instructions; no account accessed, MCP installed, credential flow tested, or resource provisioned. This is a source map, not executable configuration or a desktop/runtime-support claim.

“Official” identifies a vendor-published documentation or publisher-owned upstream source. Published availability does not prove suitability, complete cloud coverage, least-privilege enforcement, local availability or platform compatibility. Select the exact task's tools and preserve their product boundary.

## Five organisations

| Organisation | Verified published MCP and product boundary | Transport / setup source | Authentication and target authority | Runtime status |
| --- | --- | --- | --- | --- |
| AWS / Amazon | [Managed AWS MCP](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/mcp-server.html) combines documentation/service knowledge with authenticated API and script capabilities. Public knowledge tools do not inspect an account. | [Official setup](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/getting-started-aws-mcp-server.html) documents HTTPS regional endpoints, direct OAuth client connection, and a local stdio SigV4 proxy. Select the host-specific setup and fixed release rather than copying a latest-version example. | OAuth and SigV4 have different profile/read-only capabilities. Verify selected IAM identity, region and resource policies; SigV4 proxy read-only mode is distinct from backend IAM. API/script availability is not human approval. | Source verified; no client/auth/API testing. |
| Google | [Cloud CLI remote MCP](https://docs.cloud.google.com/sdk/use-gcloud-mcp) is preview and exposes gcloud/bq execution. [Google MCP Toolbox](https://github.com/googleapis/mcp-toolbox) covers specific configured database/service sources; it is not universal cloud authority. | Cloud CLI uses Streamable HTTP with the published endpoint; official docs cover API enablement, client setup and preview constraints. Toolbox [repository](https://github.com/googleapis/mcp-toolbox) and [prebuilt source/tool reference](https://mcp-toolbox.dev/reference/prebuilt-tools/) document separate stdio/HTTP setup. | Cloud CLI uses OAuth/IAM rather than API keys. MCP Tool User and backend resource roles are separate requirements. API enablement and billing prerequisites are effects, not implicit setup permission. Toolbox authority depends on its configured source/principal and tools. | Publication verified; preview availability, host compatibility and runtime untested. |
| IBM | IBM documents [watsonx.data lakehouse MCP](https://www.ibm.com/docs/en/watsonxdata/saas?topic=data-interacting-through-mcp-server) and [local document-library retrieval MCP](https://www.ibm.com/docs/en/watsonxdata/saas?topic=agents-watsonxdata-local-model-context-protocol-mcp-server). Neither establishes general IBM Cloud VPC/IAM/Billing administration. | The local retrieval setup documents stdio and SSE with its Python package. Lakehouse docs describe local/managed modes; resolve the exact current instance/client setup before selection. A general infrastructure MCP was not verified in this bounded review. | IBM Cloud IAM/API-key-based target credentials depend on the product; instance access is not account-wide authority. Lakehouse docs require instance-administrator access and include write/management capabilities. Do not infer a read-only boundary from earlier release wording. | Official publication verified from indexed IBM docs; some direct page fetches returned 403/unavailable. Tool, transport/auth and runtime proof remain pending for the chosen path. |
| Microsoft / Azure | [Azure MCP](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/) publishes Azure resource tooling; [Microsoft Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp-get-started) is documentation research. Neither grants tenant/subscription authority through installation alone. | Use the official Azure MCP and Learn MCP setup documentation for the selected host, server version and supported transport; route through the existing [Azure safety skill](../../.github/skills/azure-admin-safe-operations/SKILL.md). | Verify Microsoft Entra identity, tenant, subscription, exact tool and Azure RBAC scope. Documentation access has no target-resource authority. | Source verified; target execution and auth untested by this work. |
| Oracle / OCI | [Oracle-published OCI Cloud MCP](https://github.com/oracle/mcp/blob/main/src/oci-cloud-mcp-server/README.md) discovers/describes/invokes OCI SDK operations. OCI API MCP is a separate CLI-backed option. SQLcl MCP is an Oracle Database surface, not an OCI resource adapter. | [Oracle upstream](https://github.com/oracle/mcp) and [specific server setup](https://github.com/oracle/mcp/blob/main/src/oci-cloud-mcp-server/README.md) document stdio and HTTP streaming; use the exact release/auth matrix. | Stdio supports selected profile or runtime-principal auth modes; HTTP uses an authenticated OCI IAM user and caller-specific token exchange. Generic SDK invocation may mutate resources; inspect exact method/parameters and IAM/compartment scope first. | Source/setup verified; no installed server, auth or SDK invocation tested. |

## Upstream skills and local routing

- [AWS Agent Toolkit](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/quick-start.html) publishes skills/plugins and MCP integration through the official [aws/agent-toolkit-for-aws](https://github.com/aws/agent-toolkit-for-aws) repository. Route task specifics upstream without copying bodies.
- Google identifies [google/skills](https://github.com/google/skills) as its official Agent Skills repository in its [publisher announcement](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository). Toolbox also publishes its own skills/generation surface.
- For Azure, use [official Azure Skills](https://github.com/microsoft/azure-skills) and the existing upstream overlap decisions. This catalog adds no duplicate Azure organisation skill.
- No broad IBM Cloud or OCI Agent Skill pack was established by this bounded review; it is not an absence claim. Their official product/server sources remain the fallback.

Start with [admin-cloud-infrastructure](../../.github/skills/admin-cloud-infrastructure/SKILL.md), then load the selected organisation specialist. Keep proposed setup, authenticated target observation and mutation as separate states. No third-party/community MCP server is selected by this map. A vendor-published sample or upstream repository, where selected, is still subject to its own maturity/support statements; publisher ownership alone is not a production guarantee.

## Proof still required

Before selecting any operational integration, verify the actual server release, host/protocol support, exact caller and target scope, least-privilege tool effects, inbound/backend authentication, bounded reads, cost impacts and independent workload/recovery checks. Cloud accounts, API enablement, role grants, endpoint exposure, paid service use and installation are separate reviewed effects. Reconcile unknown completion before retrying.

## Sources

- [AWS MCP scope](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/mcp-server.html)
- [AWS MCP authentication and setup](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/getting-started-aws-mcp-server.html)
- [AWS Agent Toolkit quickstart](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/quick-start.html)
- [AWS-published Agent Toolkit repository](https://github.com/aws/agent-toolkit-for-aws)
- [Google Cloud CLI remote MCP preview](https://docs.cloud.google.com/sdk/use-gcloud-mcp)
- [Google-published MCP Toolbox](https://github.com/googleapis/mcp-toolbox)
- [Google Toolbox prebuilt reference](https://mcp-toolbox.dev/reference/prebuilt-tools/)
- [Google official skills repository](https://github.com/google/skills)
- [Google publisher announcement for official skills](https://cloud.google.com/blog/topics/developers-practitioners/level-up-your-agents-announcing-googles-official-skills-repository)
- [IBM watsonx.data lakehouse MCP](https://www.ibm.com/docs/en/watsonxdata/saas?topic=data-interacting-through-mcp-server)
- [IBM watsonx.data local document-library retrieval MCP](https://www.ibm.com/docs/en/watsonxdata/saas?topic=agents-watsonxdata-local-model-context-protocol-mcp-server)
- [IBM watsonx.data release notes](https://www.ibm.com/docs/en/watsonxdata/saas?topic=overview-whats-new-in-watsonxdata)
- [Azure MCP documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Microsoft Learn MCP setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Official Azure Skills](https://github.com/microsoft/azure-skills)
- [Oracle MCP product catalog](https://www.oracle.com/mcp/)
- [Oracle MCP publisher repository](https://github.com/oracle/mcp)
- [OCI Cloud MCP specific setup and authority](https://github.com/oracle/mcp/blob/main/src/oci-cloud-mcp-server/README.md)
