# Official database MCP source map

Checked: 2026-10-02. Status: publisher/source verification and local routing instructions; no server installed or tested against a target. A credentials-free Redis Docs metadata probe returned HTTP 403 from the research environment; local reachability remains unverified. This page provides setup references, not executable configuration or a deployment claim.

“Official” identifies the product vendor or named upstream maintainer as publisher, supported by its documentation or linked publisher-owned repository. It does not mean this harness has validated authentication, query safety, runtime compatibility, or every advertised capability. “None verified” is a bounded research result, not a claim that no server exists.

## Five organisations

| Organisation | Verified published MCP and product boundary | Transport / setup source | Authentication and target authority | Runtime status |
| --- | --- | --- | --- | --- |
| Microsoft | [SQL MCP Server](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/overview), part of Data API builder, exposes configured database entities and DML/custom stored-procedure tools. It is not a general SQL Server DBA, DDL, backup, or restore endpoint. | Official [overview](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/overview) documents Streamable HTTP and stdio; [local quickstart](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/quickstart-visual-studio-code) gives setup. Resolve the actual DAB release and configured tools rather than assuming a fixed catalog. | Entity roles/actions and the backing database identity constrain access. Stdio uses simulator-provider role selection, not protected human authentication. HTTP requires its deployment's configured identity/security boundary. | Source verified; local and remote runtime untested. |
| MongoDB | [Official MongoDB MCP](https://www.mongodb.com/docs/mcp-server/overview/) offers Local MCP and Atlas Managed MCP. Database operations and Atlas management have distinct credentials/scopes. | Local [configuration](https://www.mongodb.com/docs/mcp-server/local-mcp/configuration/) and [security](https://www.mongodb.com/docs/mcp-server/local-mcp/security-best-practices/) document stdio and Streamable HTTP. Managed setup and endpoint are linked from the official overview; confirm the selected client's protocol/auth path. | Local readOnly mode is not enabled by default; combine it with a limited database user. Remote self-hosted inbound protection is separate from backend login. Managed access uses delegated Atlas OAuth or per-configuration service accounts, assigned roles, IP restrictions and read-only settings. | Source verified; no deployment or auth flow tested. |
| Oracle | [SQLcl MCP](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/26.1/sqcug/sqlcl-mcp-server.html) executes SQL, PL/SQL and SQLcl commands against Oracle Database; it does not establish OCI resource-control authority. | Local stdio through SQLcl; official [26.1 setup/management](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/26.1/sqcug/starting-and-managing-sqlcl-mcp-server.html). [Oracle's catalog](https://www.oracle.com/mcp/) lists separate managed Database Tools and ORDS deployment models; their task-specific setup was not validated here. | Uses saved/named SQLcl database connections and their privileges. Direct command capability is not a read-only boundary. Oracle's [SQLcl guidance](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/25.2/sqcug/using-oracle-sqlcl-mcp-server.html) cautions against LLM access to production databases. | SQLcl publication/setup verified; runtime and other deployment models untested. |
| PostgreSQL Global Development Group | No PGDG-published MCP verified from the project's public docs and targeted research. [Google-published MCP Toolbox](https://github.com/googleapis/mcp-toolbox) is a verified cross-publisher PostgreSQL integration; do not label it PGDG's server. | Google's current [repository](https://github.com/googleapis/mcp-toolbox) and [prebuilt reference](https://mcp-toolbox.dev/reference/prebuilt-tools/) document source/toolset setup and stdio/HTTP options. The old genai-toolbox repository redirects to mcp-toolbox. | Configured PostgreSQL source, SQL tools/templates, and database role determine backend access; HTTP listener protection is a separate configuration question. Review arbitrary-SQL effects rather than assuming generic tools are read-only. | PGDG-native result is bounded; Google integration source verified, runtime untested. |
| Redis Ltd. | Three distinct Redis-published surfaces: [Docs MCP](https://redis.io/docs/latest/develop/setup/build-with-an-agent/) for public documentation; [data MCP](https://redis.io/docs/latest/integrate/redis-mcp/) for Redis data/instance commands; [Redis Cloud MCP](https://redis.io/docs/latest/integrate/redis-mcp/install/) for Cloud management/billing rather than data queries. | Docs MCP uses the published HTTPS endpoint. Data MCP's [publisher repository](https://github.com/redis/mcp-redis) documents stdio; [client setup](https://redis.io/docs/latest/integrate/redis-mcp/client-conf/) distinguishes clients. Cloud setup is linked in the install guide and [official repository](https://github.com/redis/mcp-redis-cloud). | Docs MCP needs no API key and has no user-instance authority. Data MCP uses the configured backend authentication/TLS/ACL. Cloud MCP uses its cloud credentials; these do not automatically confer access to database contents. | Source verified; Docs metadata probe returned HTTP 403 locally. Data/Cloud runtime untested; no target accessed. |

## Upstream skills and local routing

- MongoDB publishes [Agent Skills and official plugins](https://www.mongodb.com/docs/agent-skills/), with the publisher-owned [mongodb/agent-skills](https://github.com/mongodb/agent-skills) repository. Route development/setup specifics upstream; use the local MongoDB wrapper for target scope, inspection and recovery review.
- Redis publishes [agent tools and skills](https://redis.io/docs/latest/develop/setup/build-with-an-agent/) and [redis/agent-skills](https://github.com/redis/agent-skills). Keep their design/security/observability guidance upstream and add only administration review here.
- Google publishes [MCP Toolbox](https://github.com/googleapis/mcp-toolbox), including a skills catalog and toolset-to-skill generation. It is a Google source even when the target is PostgreSQL or another vendor's database.
- For Microsoft overlap, consult the [upstream skill register](../upstream-skill-register.md). No general Oracle or PGDG Agent Skill pack was established by this bounded review; this is not a statement of absence.

Start with [admin-databases](../../.github/skills/admin-databases/SKILL.md), then load the selected organisation specialist. Installing or exposing a server, changing client config, creating a database user, granting roles, or enabling remote service access are separate effects requiring reviewed scope. Official setup examples may use broad/default or development settings; do not inherit those settings as approval or production suitability.

## Proof still required

For any selected integration, verify publisher/release, host OS/architecture, client protocol, target identity, explicit tool effects, backend and inbound access controls, bounded read evidence, failure handling, redaction, and independent application/recovery checks. This research did not query a database or test a server's claimed read-only mode.

The [local validation record](../evals/admin-domain-validation.md) separates document and skill checks from protocol metadata observations, including the Redis Docs HTTP 403 result. That response does not establish server absence or target-runtime failure.

## Sources

- [Microsoft SQL MCP overview](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/overview)
- [Microsoft SQL MCP local quickstart](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/quickstart-visual-studio-code)
- [MongoDB MCP overview](https://www.mongodb.com/docs/mcp-server/overview/)
- [MongoDB Local MCP configuration](https://www.mongodb.com/docs/mcp-server/local-mcp/configuration/)
- [MongoDB Local MCP security](https://www.mongodb.com/docs/mcp-server/local-mcp/security-best-practices/)
- [MongoDB Agent Skills](https://www.mongodb.com/docs/agent-skills/)
- [MongoDB-published Agent Skills repository](https://github.com/mongodb/agent-skills)
- [Oracle SQLcl MCP 26.1](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/26.1/sqcug/sqlcl-mcp-server.html)
- [Oracle SQLcl MCP setup and management 26.1](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/26.1/sqcug/starting-and-managing-sqlcl-mcp-server.html)
- [Oracle SQLcl MCP production-access caution 25.2](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/25.2/sqcug/using-oracle-sqlcl-mcp-server.html)
- [Oracle MCP product catalog](https://www.oracle.com/mcp/)
- [PostgreSQL project identity and official documentation entry](https://www.postgresql.org/about/)
- [Google-published MCP Toolbox repository](https://github.com/googleapis/mcp-toolbox)
- [Google-published Toolbox prebuilt reference](https://mcp-toolbox.dev/reference/prebuilt-tools/)
- [Redis Docs MCP and Agent Skills](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
- [Redis MCP overview](https://redis.io/docs/latest/integrate/redis-mcp/)
- [Redis MCP installation and Cloud MCP distinction](https://redis.io/docs/latest/integrate/redis-mcp/install/)
- [Redis MCP client setup](https://redis.io/docs/latest/integrate/redis-mcp/client-conf/)
- [Redis data MCP repository](https://github.com/redis/mcp-redis)
- [Redis Cloud MCP repository](https://github.com/redis/mcp-redis-cloud)
- [Redis Agent Skills repository](https://github.com/redis/agent-skills)
