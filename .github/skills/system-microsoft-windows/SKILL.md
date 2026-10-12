---
name: system-microsoft-windows
description: Route Windows Server, Windows Admin Center, and Hyper-V research or service diagnostics through official Microsoft documentation and scoped authority checks. Use to prepare Windows server recovery or management plans without assuming gateway login grants target access.
---

# Microsoft Windows systems

Thin source/scope wrapper; no Windows agent, server adapter or tested runtime is supplied.

## Workflow

1. Identify server edition/build, installed role, Windows Admin Center version, gateway and exact server/Hyper-V scope. Separate server OS/service work from Azure or Microsoft 365 tenant tasks.
2. Route documentation research through [microsoft-learn-research](../microsoft-learn-research/SKILL.md) and applicable configured upstream `microsoft-docs`/official task skills in [the overlap register](../../../docs/upstream-skill-register.md).
3. Use [Learn MCP scope](../../../docs/mcp-domains/systems-and-services.md#3-microsoft) only for public documentation. It cannot return server state or grant Windows authority; if target tools are unavailable, state which observations remain missing.
4. Establish existing target authority separately from gateway access. Windows Admin Center Readers uses configured RBAC/JEA; the application itself is not a protected security boundary. A successful gateway login does not prove a service query is authorised or that changes are impossible.
5. Correlate permitted service/event observations with the named workload. Keep permission failure, partial inventory, hypotheses and independently observed application health separate.
6. Prepare the narrow service/role/Hyper-V change with target scope, current state, impact, recovery and independent checks under [admin-change-safety](../admin-change-safety/SKILL.md). Restart, role installation and permission changes remain effects requiring human approval.

Initial proof needs an authorised disposable Windows Server target, a verified diagnostic account and independent management-console/application observations. This skill is not proof that a Linux-hosted desktop can administer that target.

## Sources

- [Microsoft: Windows Server management overview](https://learn.microsoft.com/en-us/windows-server/administration/overview)
- [Microsoft: Windows Admin Center user access options](https://learn.microsoft.com/en-us/windows-server/manage/windows-admin-center/plan/user-access-options)
- [Microsoft: Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp)
- [Upstream skill register](../../../docs/upstream-skill-register.md)
