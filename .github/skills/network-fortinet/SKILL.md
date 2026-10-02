---
name: network-fortinet
description: Research Fortinet FortiGate/FortiOS traffic-policy and access issues, organise scoped diagnostic evidence, and draft bounded firewall plans using official version and administrator-profile documentation.
---

# Fortinet networking

Thin source/scope wrapper; no FortiGate appliance, token, MCP adapter or runtime proof is supplied.

## Workflow

1. Identify FortiGate model, FortiOS release, named VDOM, management endpoint, administrator profile and synthetic or authorised traffic path. Resolve FortiManager/controller work separately from direct FortiGate authority.
2. Match the relevant release docs; sources below cover 7.6.2. Use the minimum existing profile and trusted management connection. Creating a REST API administrator requires `super_admin` authority and is a separate approved change, not a diagnostic prerequisite silently performed.
3. Keep tokens in approved credential storage outside chat/Git, review trusted-host restrictions and verify exact permitted operations. An inaccessible log or VDOM is a capture gap; do not grant broad roles just to gather evidence.
4. Compare authorised policy/interface/route/log observations with intended flow and independent traffic on both sides. A matching rule alone does not establish traffic health.
5. Read [official MCP research](../../../docs/mcp-domains/networking.md#3-fortinet): no official external FortiGate administration server was verified. FortiAI's internal MCP path is not a published external adapter/setup. Fall back to official docs and approved existing access, with missing runtime evidence stated.
6. Check [upstream overlap](../../../docs/upstream-skill-register.md) for an applicable configured official task skill. Prepare a bounded policy plan under [admin-change-safety](../admin-change-safety/SKILL.md), with VDOM impact, management recovery and independent flow verification before effects.

Initial proof uses an entitled isolated FortiGate with synthetic traffic and separately tested denied writes. Backup/restore and capture may require broader authority; do not treat them as automatically safe reads.

## Sources

- [Fortinet: FortiOS 7.6.2 administrator profiles](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/294491)
- [Fortinet: FortiOS 7.6.2 REST API administrators](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/399023)
- [Fortinet: FortiManager FortiAI internal data flow](https://docs.fortinet.com/document/fortimanager/8.0.0/ai-transparency-note/202884/4-data-flows-protection-and-retention)
- [Networking guide](../../../docs/admin-domains/networking.md)
