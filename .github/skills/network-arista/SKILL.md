---
name: network-arista
description: Research Arista EOS/eAPI networking problems, organise scoped interface and routing observations, and draft bounded configuration plans from official release references. Use for identified Arista devices with existing approved access.
---

# Arista networking

Thin source/scope wrapper; no EOS appliance, eAPI adapter or runtime verification is supplied.

## Workflow

1. Record device/model, EOS release, named management endpoint, affected interface/path and intended topology. The official manual URLs roll forward; pin advice to the target release.
2. Establish existing SSH/HTTPS, AAA and exact authorised operations. Built-in `network-operator` permits EXEC commands; its name is not a universal read-only boundary. eAPI enablement is a separate effect, not diagnostic preparation.
3. Collect permitted interface/route/neighbour observations and collection time, then compare with endpoint traffic evidence. Expose permission gaps and conflicting topology rather than inferring the cause from one green status.
4. Check [official MCP inventory](../../../docs/mcp-domains/networking.md#1-arista-networks). No official EOS/CloudVision MCP was verified here; eAPI documentation alone does not establish one. Use official docs and approved existing tools when available, without inventing MCP tools or installing community wrappers.
5. Check [upstream overlap](../../../docs/upstream-skill-register.md) and route detail to an applicable configured official task skill. Preserve source/release and scoped evidence in the local output.
6. Draft one narrow correction with management-access recovery, affected traffic and independent checks under [admin-change-safety](../admin-change-safety/SKILL.md). Role/API changes, active probes, capture and lifecycle operations need their own scope assessment.

Initial proof uses an entitled isolated EOS device and synthetic topology/traffic. Test denied effects separately from allowed diagnostics; CLI permission does not automatically establish API permission.

## Sources

- [Arista: EOS user security and roles](https://www.arista.com/en/um-eos/eos-user-security)
- [Arista: EOS API/session management](https://www.arista.com/en/um-eos/eos-session-management-commands)
- [Networking guide](../../../docs/admin-domains/networking.md)
- [Official network MCP inventory](../../../docs/mcp-domains/networking.md)
