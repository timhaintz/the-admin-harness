# Security Model

The Admin Harness is designed for high-trust, high-impact IT admin workflows. It must fail closed and keep humans in control of tenant changes.

## Risk Tiers

- `read`: portal lookup, documentation search, public status pages.
- `diagnostic`: read-only tenant or resource inspection.
- `plan`: proposed change with impact, prerequisites, validation, and rollback.
- `change`: mutation requiring explicit human approval.
- `dangerous`: destructive, broad-scope, identity, credential, retention, production, or privilege-sensitive action requiring out-of-band confirmation.

## Credentials

- Never ask users to paste passwords, API keys, refresh tokens, admin credentials, or access tokens into chat.
- Use platform-native auth flows, browser login, OAuth, device code flows, environment variables, or OS credential stores as appropriate.
- Do not commit `.env` files, browser profiles, generated credential caches, tenant IDs, or logs containing sensitive values.
- Prefer least-privilege roles and short-lived credentials.

## Approval Gates

Any mutation must show:

- exact tenant and account context;
- target resource and scope;
- intended action;
- required roles and permissions;
- expected impact;
- validation plan;
- rollback plan;
- explicit approval step.

Dangerous actions need an out-of-band confirmation path before execution.

## Browser and Portal Workflows

Browser automation may guide navigation or inspect visible state after approval. It must not silently enter credentials or capture secrets. Use separate browser profiles for future computer-use flows when tenant isolation matters.

## Logging and Evidence

Prefer audit-friendly summaries over raw transcript dumps. Redact identifiers unless needed for the approved task. Keep approval evidence tied to the action plan, not scattered through chat history.
