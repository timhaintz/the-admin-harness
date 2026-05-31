---
name: tenant-aware-admin
description: Handle tenant-aware Microsoft admin workflows, B2B portal URLs, sovereign cloud selection, tenant ID privacy, and multi-tenant MSP context. Use when the user mentions tenant IDs, customer tenants, GCC, GCC High, DoD, China, 21Vianet, partner delegated admin, or B2B links.
compatibility: Cross-agent skill; does not require MCP tools.
---

# Tenant-Aware Admin

Use this skill when the admin task depends on tenant, cloud, customer, or delegated admin context.

## Workflow

1. Identify whether the user is in commercial, GCC, GCC High, DoD, China/21Vianet, or another sovereign environment.
2. Identify whether the user is acting in their own tenant or via partner/delegated/B2B context.
3. If a tenant ID is needed, ask for the minimum required value and explain privacy risk.
4. Build URLs only from source-backed portal patterns. Do not persist tenant IDs.
5. For MSP workflows, distinguish customer tenant context from partner tenant context.

## Privacy Warning

Tenant IDs placed in portal URLs, browser history, bookmarks, screenshots, or logs may be exposed. Avoid writing tenant IDs into repository files, skill evals, durable logs, or documentation examples.

## Output

Return:

- Cloud/environment.
- Tenant context needed.
- Portal or docs path.
- Privacy warning when tenant-specific URLs are involved.
- Any approval or role prerequisite.

## Guardrails

- Never invent a tenant ID.
- Never store tenant IDs in files.
- Never ask for passwords, refresh tokens, or admin secrets.
- Do not assume commercial cloud URLs work in sovereign clouds.

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft Zero Trust identity guidance](https://learn.microsoft.com/en-us/security/zero-trust/deploy/identity)
- [Microsoft least-privilege guidance](https://learn.microsoft.com/en-us/entra/identity-platform/secure-least-privileged-access)
- [docs/source-register.md](../../../docs/source-register.md)
