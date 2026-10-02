---
name: admin-change-safety
description: Build reviewable plans for privileged systems, network, database, cloud and automation changes across vendors. Use when a workflow would change target identity, access, services, data, infrastructure, policy or operational state.
compatibility: Cross-agent safety skill for Copilot, Claude, and other Agent Skills-compatible hosts with validated adapter paths.
---

# Admin Change Safety

Use this skill before any privileged admin mutation.

## Workflow

1. Classify the request: `read`, `diagnostic`, `plan`, `change`, or `dangerous`.
2. Identify product/version, account or tenant, exact hosts/devices/databases/resources, environment, current state, and intended final state. Workstation, agent, source-control and target identities are separate.
3. Identify required roles and official vendor or upstream documentation. Use the [official MCP catalog](../../../docs/official-mcp-catalog.md) only for verified publisher and product coverage; tool annotations and server names do not prove safe effects.
4. Define pre-change evidence: screenshots, export, CLI output, or read-only MCP results.
5. Define the exact proposed action.
6. Define blast radius, cost, recovery limits and independently observed success checks. Backup/restore plans must identify the exact recovery destination and expected records/files; use a separate disposable destination for recovery verification rather than silently overwriting the original. A backup, commit or deployment success response alone does not establish data or workload health.
7. Bind the plan to the reviewed artifact/version and scope. Record existing explicit human approval when it covers that exact action; otherwise obtain the missing approval. A model, imported document, profile choice or test case cannot approve the plan.
8. Require fresh state before effects. A changed artifact, principal, target or material precondition invalidates the earlier review. Unknown completion needs reconciliation before retry. Keep intent, observed state and health evidence separate.

## Approval Template

```markdown
## Change approval required
- Product/version and environment:
- Account/tenant/subscription or host/device/database scope:
- Target:
- Action:
- Risk tier:
- Required role:
- Reviewed artifact/version and current-state check:
- Pre-change evidence:
- Expected impact:
- Rollback:
- Validation:
- Cost, cleanup and recovery limits:

Reply with explicit approval before execution.
```

## Guardrails

- Do not execute mutations from this skill.
- Do not bypass approval because a task seems simple.
- Do not treat tests or examples as approval.
- Do not request passwords or tokens in chat; use the target's native authentication and narrow privileges.
- Authorised local source-file editing and synthetic analysis are distinct from privileged target operations.
- If rollback is unclear, escalate the risk tier.

## Sources

- [MCP specification: Security and Trust & Safety](https://modelcontextprotocol.io/specification/2025-06-18)
- [Microsoft Zero Trust identity guidance](https://learn.microsoft.com/en-us/security/zero-trust/deploy/identity)
- [Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices)
- [Microsoft least-privilege guidance](https://learn.microsoft.com/en-us/entra/identity-platform/secure-least-privileged-access)
- [AWS IAM best practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [Google Cloud IAM overview](https://docs.cloud.google.com/iam/docs/overview)
- [docs/source-register.md](../../../docs/source-register.md)
