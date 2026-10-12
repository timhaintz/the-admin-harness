---
name: admin-networking
description: Route network administration research, scoped diagnostics, and proposed topology or policy changes to Arista, Cisco, Fortinet, HPE Aruba/Juniper, or Palo Alto Networks skills. Use when an administrator chooses a networking use case or needs the correct product boundary.
---

# Networking router

Local routing instructions only; no appliance, network adapter, credentials or runtime integration are supplied.

## Select the route

Resolve product family/release, controller versus device, management endpoint, site/device/VDOM scope and affected traffic path before selecting tools. HPE Aruba and Juniper remain distinct product/authority models. A vendor's adjacent cloud or SOC MCP does not establish device coverage.

| Organisation/product | Local route |
| --- | --- |
| Arista EOS/eAPI | [Arista networking](../network-arista/SKILL.md) |
| Cisco IOS XE/Meraki/Catalyst Center | [Cisco networking](../network-cisco/SKILL.md) |
| Fortinet FortiGate/FortiOS | [Fortinet networking](../network-fortinet/SKILL.md) |
| HPE Aruba AOS-CX/Juniper Junos/Routing Director | [HPE networking](../network-hpe/SKILL.md) |
| Palo Alto Networks PAN-OS/Panorama | [Palo Alto networking](../network-palo-alto/SKILL.md) |

## Workflow

1. Load the selected specialist and official release documentation; check [upstream overlap](../../../docs/upstream-skill-register.md) and route to an applicable configured official task skill instead of recreating its procedure.
2. Check [official MCP product boundaries](../../../docs/mcp-domains/networking.md) and actual configured tool effects/authority. Docs search is not live telemetry. If no matching official integration is configured, state the gap and prepare a documented observation/plan rather than inventing a server or tool.
3. Correlate device/controller observations with intended topology and independent traffic evidence. Record denied access, collection time and partial scope; redact secrets before sharing.
4. Apply [admin-change-safety](../admin-change-safety/SKILL.md) to effects. Packet capture, active probes, API enablement, account changes, configuration commits, firmware and reboots each need their own scope assessment. Preserve management recovery and independent traffic validation in a proposed plan.

Initial trials require entitled isolated devices and synthetic traffic. A successful API or commit response is not proof of end-to-end health.

## Sources

- [Networking research guide](../../../docs/admin-domains/networking.md)
- [Official networking MCP inventory](../../../docs/mcp-domains/networking.md)
- [Upstream skill register](../../../docs/upstream-skill-register.md)
- [Source register](../../../docs/source-register.md)
