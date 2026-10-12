---
name: azure-admin-safe-operations
description: Plan and guide Azure administrative workflows with Azure MCP or official Azure documentation while separating read-only inspection from mutations. Use for Azure portal, resource, subscription, RBAC, policy, cost, monitoring, and operational tasks.
compatibility: Designed for hosts with Azure MCP configured, but usable as a planning skill without Azure MCP.
---

# Azure Admin Safe Operations

Use this skill for Azure operational tasks. Prefer read-only discovery first.

## Workflow

1. Identify subscription, tenant, resource group, resource type, and environment risk.
2. Read the Azure entry in the [official cloud MCP inventory](../../../docs/mcp-domains/cloud-and-infrastructure.md). Reuse official Azure Skills for detailed tasks when available; this local skill supplies scope, source and review context rather than copying upstream procedures.
3. If the official Azure MCP is configured, inspect its installed version and available tools before using authorised observations. Its default scope can come from cached CLI/environment state; explicitly confirm tenant, subscription and resource scope. Prefer documented read-only mode and narrow namespaces, retain sensitive-data confirmation, and do not equate read-only with permission to retrieve secrets.
4. If it is unavailable, use official Azure documentation or a documented manual portal path; report that no live inventory was obtained. Setup is an explicit preparation choice, not an implicit permission to install or authenticate.
5. Classify the action as `read`, `diagnostic`, `plan`, `change`, or `dangerous`.
6. For `change` and `dangerous`, use [admin-change-safety](../admin-change-safety/SKILL.md) to produce a reviewed plan instead of executing. Approval must bind the exact artifact and fresh scope/state.
7. Verify control-plane state and application health separately. For recovery, validate a separate restore target; for cost, identify budget/action behaviour and retained resources. Record permission, regional support and evidence gaps.

State the exact human approval prerequisite before a mutation; safety routing or review alone is not approval. Preserve existing explicit authority only for its exact artifact, scope and fresh preconditions. For a documentation-only assessment, state unresolved target read permissions as well as inventory/scope gaps; do not imply that a manual checklist already has account access.

## Output

```markdown
## Classification
[risk tier]

## Read-only checks
- [check]

## Proposed action
- [only if needed]

## Approval required
- Tenant/subscription:
- Scope:
- Expected impact:
- Rollback:

## Validation
- [command or portal check]
```

## Guardrails

- Do not assume the active subscription is correct.
- Do not broaden RBAC scope without explicit approval.
- Do not delete, redeploy, rotate, disable, or expose resources without approval.
- Treat production, identity, networking, secrets, backup, and policy changes as high risk.
- Azure MCP is documented for approved developer environments; source review does not certify production deployment, desktop support or all Azure services.
- A documented MCP, local skill and eval fixture do not establish a protected execution boundary or a tested target integration.

## Sources

- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Azure MCP tool parameters and modes](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/tools/)
- [Azure MCP authentication and deployment security](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/security)
- [Official Azure Skills](https://github.com/microsoft/azure-skills)
- [Azure Backup role/permission scope](https://learn.microsoft.com/en-us/azure/backup/backup-rbac-rs-vault)
- [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices)
- [MCP specification: Security and Trust & Safety](https://modelcontextprotocol.io/specification/2025-06-18)
- [docs/source-register.md](../../../docs/source-register.md)
