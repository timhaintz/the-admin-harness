---
name: microsoft-learn-research
description: Ground IT admin answers in Microsoft Learn and official Microsoft documentation. Use when the user asks how to perform, troubleshoot, configure, verify, or explain a Microsoft admin task and needs current procedural guidance.
compatibility: Works with Microsoft Learn MCP when configured; otherwise use official Microsoft documentation links.
---

# Microsoft Learn Research

Use this skill when an admin task needs current Microsoft documentation rather than memory or guesswork.

## Workflow

1. Restate the admin task and identify the Microsoft workload.
2. Prefer Microsoft Learn MCP if available. If not available, use official Microsoft documentation pages.
3. Extract role requirements, prerequisites, portal or PowerShell path, important warnings, and validation steps.
4. Separate read-only investigation from change actions.
5. If guidance is uncertain or product names have changed, say so and cite the source used.

## Output

Use this shape:

```markdown
## Answer
[Concise answer]

## Source-backed steps
1. [Step]
2. [Step]

## Permissions and safety
- Required roles:
- Change risk:
- Validation:

## Sources checked
- [Source title](URL or MCP source identifier)
```

## Guardrails

- Do not cite community blogs as authoritative for Microsoft role requirements.
- Do not perform tenant changes.
- If the user wants execution, produce an approval-ready plan and hand off to `admin-change-safety`.
