---
name: azure-admin-safe-operations
description: Plan and guide Azure administrative workflows with Azure MCP or official Azure documentation while separating read-only inspection from mutations. Use for Azure portal, resource, subscription, RBAC, policy, cost, monitoring, and operational tasks.
compatibility: Designed for hosts with Azure MCP configured, but usable as a planning skill without Azure MCP.
---

# Azure Admin Safe Operations

Use this skill for Azure operational tasks. Prefer read-only discovery first.

## Workflow

1. Identify subscription, tenant, resource group, resource type, and environment risk.
2. If Azure MCP is configured, use read-only calls first for inventory, status, and validation.
3. If Azure MCP is not configured, provide a setup or manual portal path.
4. Classify the action as `read`, `diagnostic`, `plan`, `change`, or `dangerous`.
5. For `change` and `dangerous`, produce a plan with approval gates instead of executing.
6. Include rollback or recovery steps when the task changes Azure resources.

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

## Sources

- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices)
- [MCP specification: Security and Trust & Safety](https://modelcontextprotocol.io/specification/2025-06-18)
- [docs/source-register.md](../../../docs/source-register.md)
