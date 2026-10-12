---
name: admin-cloud-infrastructure
description: Choose and route AWS, Google Cloud, IBM Cloud, Azure, and OCI administration tasks using official product sources, upstream skills, and verified MCP product boundaries.
---

# Cloud and Infrastructure Router

This skill selects a product route; it does not provision a workstation, install clients, or establish target access.

## Route

Identify provider and exact service, account/project/subscription/tenancy, region/partition, intended task, billing scope and identity. Multiple cloud targets need separate scope and permission checks; desktop or agent login is not cloud authority.

Read the [domain catalog](../../../docs/admin-domains/cloud-and-infrastructure.md) and [official MCP map](../../../docs/mcp-domains/cloud-and-infrastructure.md). Then load only the selected specialist:

| Organisation / system | Specialist |
| --- | --- |
| AWS / Amazon | [cloud-aws](../cloud-aws/SKILL.md) |
| Google Cloud | [cloud-google](../cloud-google/SKILL.md) |
| IBM Cloud | [cloud-ibm](../cloud-ibm/SKILL.md) |
| Microsoft Azure | [azure-admin-safe-operations](../azure-admin-safe-operations/SKILL.md) |
| Oracle OCI | [cloud-oracle](../cloud-oracle/SKILL.md) |

Prefer official upstream task skills and the configured exact service MCP. Public documentation MCP cannot inspect an account, Toolbox does not cover every cloud service, and watsonx access is not general IBM Cloud authority. Route private-cloud or unlisted infrastructure to its actual official maintainer docs and record gaps rather than substituting a listed provider.

## Shared review

Use [admin-change-safety](../admin-change-safety/SKILL.md) for effects. Start with authorised bounded observation; separate sourced recommendations from actual evidence. When an official integration is unavailable, continue documentation-based planning and state the missing capability.

For a proposed change, identify scope, exact operations, permissions, impact, cost, recovery and verification. Human review binds authority to the concrete plan; tool availability alone does not. Verify actual target state and workload/data health separately, and reconcile ambiguous completion before retrying.

Report the chosen route, version and scope, official sources, configured-versus-proposed integrations, observed facts, permission/capture gaps, and the next reviewable step. The five-organisation shortlist is editorial, not a ranking or exclusion of other systems.

## Sources

- [AWS Agent Toolkit](https://docs.aws.amazon.com/agent-toolkit/latest/userguide/quick-start.html)
- [Google official skills](https://github.com/google/skills)
- [Azure MCP](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Oracle official MCP catalog](https://www.oracle.com/mcp/)
