---
name: network-palo-alto
description: Research Palo Alto Networks PAN-OS/Panorama traffic-policy and access issues, organise scoped evidence, and prepare bounded firewall plans from official API and role references. Distinguish Cortex MCP coverage from firewall administration.
---

# Palo Alto Networks networking

Thin source/scope wrapper; no firewall, tenant credentials, server installation or tested runtime is supplied.

## Workflow

1. Resolve PAN-OS versus Panorama versus Cortex, exact product/release, firewall/device group/template or tenant scope, effective role and affected traffic path. A Cortex integration does not establish a PAN-OS/Panorama adapter.
2. Use existing authorised API access with trusted HTTPS and granular role scope. Protect API keys outside chat/Git; use the supported key header instead of URLs that may enter logs. Key creation/role changes require separate authority.
3. Inspect operation effects before requesting tools. Operational APIs include restart actions; command mode or HTTP method is not a diagnostic guarantee.
4. Compare permitted policy/route/traffic observations with the intended flow and independent device/job/endpoint evidence. A completed commit or matching rule alone does not establish healthy traffic.
5. Check [official MCP inventory](../../../docs/mcp-domains/networking.md#5-palo-alto-networks). Cortex is officially published but product-specific; no PAN-OS/Panorama MCP was verified here. Revalidate Cortex's current tenant-download instructions because legacy doc links redirect. For unavailable/mismatched tools, use official product docs and state the missing live evidence.
6. Consult [upstream overlap](../../../docs/upstream-skill-register.md) and route detailed tasks to a configured applicable official skill. Prepare a narrow proposed plan under [admin-change-safety](../admin-change-safety/SKILL.md), with target authority, management recovery and independent flow checks.

Initial proof uses an entitled isolated firewall/Panorama lab with synthetic traffic and denied-effect checks. Cortex API authority, licenses and custom/updated tool surfaces require separate review if that product is selected.

## Sources

- [Palo Alto Networks: PAN-OS XML API overview](https://docs.paloaltonetworks.com/ngfw/api/getting-started)
- [Palo Alto Networks: API authentication/security](https://docs.paloaltonetworks.com/ngfw/api/api-authentication-and-security)
- [Palo Alto Networks: Panorama administrative roles](https://docs.paloaltonetworks.com/panorama/getting-started/panorama-overview/role-based-access-control/administrative-roles)
- [Palo Alto Networks: official Cortex MCP publication](https://www.paloaltonetworks.com/blog/security-operations/introducing-the-cortex-mcp-server/)
- [Official network MCP inventory](../../../docs/mcp-domains/networking.md)
