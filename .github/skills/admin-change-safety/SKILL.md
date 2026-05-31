---
name: admin-change-safety
description: Build approval-ready safety plans for Microsoft tenant or Azure administrative changes. Use before any workflow that could modify identity, access, devices, data retention, security policy, licensing, networking, production resources, or tenant-wide settings.
compatibility: Cross-agent safety skill for Copilot, Claude, OpenClaw, Hermes, and other Agent Skills-compatible hosts.
---

# Admin Change Safety

Use this skill before any privileged admin mutation.

## Workflow

1. Classify the request: `read`, `diagnostic`, `plan`, `change`, or `dangerous`.
2. Identify tenant, subscription, resource, users/groups, scope, current state, and intended final state.
3. Identify required roles and source documentation.
4. Define pre-change evidence: screenshots, export, CLI output, or read-only MCP results.
5. Define the exact proposed action.
6. Define blast radius and rollback.
7. Ask for explicit human approval for `change` or `dangerous` actions.
8. Define post-change validation.

## Approval Template

```markdown
## Change approval required
- Tenant/subscription:
- Target:
- Action:
- Risk tier:
- Required role:
- Pre-change evidence:
- Expected impact:
- Rollback:
- Validation:

Reply with explicit approval before execution.
```

## Guardrails

- Do not execute mutations from this skill.
- Do not bypass approval because a task seems simple.
- Do not treat tests or examples as approval.
- If rollback is unclear, escalate the risk tier.
