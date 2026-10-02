---
name: system-canonical-ubuntu
description: Research Canonical Ubuntu Server service and access problems, organise scoped observations, and draft recovery plans from official release documentation. Use for Ubuntu host administration with existing approved access.
---

# Canonical Ubuntu systems

Thin source/scope wrapper; no Ubuntu target adapter or runtime integration is supplied.

## Workflow

1. Record Ubuntu release, package/unit versions, named host, service dependencies and authorised account. Select the matching official server guide rather than assuming a rolling page or another distribution applies.
2. Use approved existing SSH access with trusted host identity and the actual sudo policy. Authentication/account setup is separate work; permission-denied logs are evidence gaps, not reasons to change sudo or unlock root.
3. Collect available current service/package/configuration observations, separating boot enablement from current state. Relate logs to the request and verify the application's listening endpoint/response independently where authorised.
4. Read [official MCP research](../../../docs/mcp-domains/systems-and-services.md#2-canonical): no official Ubuntu Server administration MCP was verified. Multipass's community-led integration is excluded. Do not install a community wrapper or claim another distribution's server covers Ubuntu.
5. Use official docs when tools are unavailable, identifying missing live evidence. Check [upstream overlap](../../../docs/upstream-skill-register.md) for a configured applicable official task skill; Canonical's generic authoring collection is not an Ubuntu operations adapter.
6. Prepare one bounded recovery proposal with impact, reviewed artifact and independent health/recovery checks, then apply [admin-change-safety](../admin-change-safety/SKILL.md) before package, service, reboot or access effects.

Initial proof uses a disposable Ubuntu target and synthetic service data. Report inaccessible observations and distinguish a proposed restart from one actually approved and completed.

## Sources

- [Canonical: Ubuntu publisher and lifecycle](https://ubuntu.com/about)
- [Canonical: Ubuntu Server user management](https://ubuntu.com/server/docs/how-to/security/user-management/)
- [Canonical: Ubuntu Server OpenSSH](https://ubuntu.com/server/docs/how-to/security/openssh-server/)
- [Canonical: Multipass publisher/community distinction](https://github.com/canonical/multipass)
- [Systems guide](../../../docs/admin-domains/systems-and-services.md)
