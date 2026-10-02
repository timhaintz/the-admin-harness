---
name: admin-databases
description: Choose and route database administration tasks across SQL Server, MongoDB, Oracle Database, PostgreSQL, and Redis using official product sources and verified MCP boundaries.
---

# Database Administration Router

This skill selects a product route; it does not provision a workstation, install clients, or establish target access.

## Route

Identify database engine, self-managed or managed mode, exact release/edition, cluster/database scope, task and recovery objective. A provider's cloud account and database principal are separate authorities; client preparation and server provisioning are separate choices.

Read the [domain catalog](../../../docs/admin-domains/databases.md) and [official MCP map](../../../docs/mcp-domains/databases.md). Then load only the selected specialist:

| Organisation / system | Specialist |
| --- | --- |
| Microsoft / SQL Server | [database-microsoft-sql-server](../database-microsoft-sql-server/SKILL.md) |
| MongoDB | [database-mongodb](../database-mongodb/SKILL.md) |
| Oracle Database | [database-oracle](../database-oracle/SKILL.md) |
| PostgreSQL | [database-postgresql](../database-postgresql/SKILL.md) |
| Redis | [database-redis](../database-redis/SKILL.md) |

Do not select a generic SQL MCP as a universal DBA interface. SQL MCP entity access, SQLcl command execution, MongoDB local/managed modes, PostgreSQL cross-publisher Toolbox, and Redis docs/data/Cloud management have different effects. Use the selected specialist's source map; do not install every database client or create a lab by default.

## Shared review

Use [admin-change-safety](../admin-change-safety/SKILL.md) for effects. Start with authorised bounded observation; separate sourced recommendations from actual evidence. When an official integration is unavailable, continue documentation-based planning and state the missing capability.

For a proposed change, identify scope, exact operations, permissions, impact, cost, recovery and verification. Human review binds authority to the concrete plan; tool availability alone does not. Verify actual target state and workload/data health separately, and reconcile ambiguous completion before retrying.

Report the chosen route, version and scope, official sources, configured-versus-proposed integrations, observed facts, permission/capture gaps, and the next reviewable step. The five-organisation shortlist is editorial, not a ranking or exclusion of other systems.

## Sources

- [PostgreSQL server administration](https://www.postgresql.org/docs/18/admin.html)
- [Microsoft SQL MCP scope](https://learn.microsoft.com/en-us/azure/data-api-builder/mcp/overview)
- [MongoDB MCP scope](https://www.mongodb.com/docs/mcp-server/overview/)
- [Redis agent interfaces](https://redis.io/docs/latest/develop/setup/build-with-an-agent/)
