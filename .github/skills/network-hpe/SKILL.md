---
name: network-hpe
description: Route HPE Aruba AOS-CX, Juniper Junos, and Routing Director network research or scoped diagnostics using their distinct official product and authority models. Use matching official Juniper/GreenLake MCP only within its verified product scope.
---

# HPE / Aruba / Juniper networking

Thin source/scope wrapper; no appliance, credentials, server installation or runtime integration is supplied.

## Workflow

1. Identify Aruba AOS-CX versus Junos versus Routing Director, product/release, device/controller, management endpoint and affected traffic scope. HPE ownership does not merge these operating systems or permission models.
2. Review exact authorised operations. AOS-CX's documented read-only API mode has upload exceptions; Junos `operator` includes reset-related permissions. Neither label alone proves a no-effect identity.
3. Consult [official MCP scope](../../../docs/mcp-domains/networking.md#4-hpe-aruba-networking-and-juniper). Junos and Routing Director servers are target-specific and mutation-capable; GreenLake's workspace MCP is not an AOS-CX/Junos adapter. Inspect actual version, tools, target account and client authentication before diagnostics.
4. Preserve SSH/TLS host identity and store mappings/keys/tokens outside Git/chat. Junos HTTP and Routing Director HTTP have different authentication defaults. Operational command blocklists do not establish a complete protection boundary; do not enable changes or expose an unauthenticated endpoint as automatic preparation.
5. Collect permitted route/interface/controller evidence, timestamp and gaps; compare with intended topology and independent traffic. If no matching official tool is available, use official docs and state the missing observations.
6. Check [upstream overlap](../../../docs/upstream-skill-register.md) and route detail to a configured applicable official task skill. Draft any correction through [admin-change-safety](../admin-change-safety/SKILL.md), with management recovery and traffic verification.

For a proposed Junos change, validate confirmed-commit behaviour for that release and confirm only after independent access/traffic checks. Its rollback timer is not proof of workload health. Test Aruba and Juniper families separately in entitled isolated labs.

## Sources

- [HPE Aruba: AOS-CX 10.15 API access-mode exceptions](https://arubanetworking.hpe.com/techdocs/AOS-CX/10.15/HTML/rest_v10-0x/Content/Chp_Intro/res-api-acc-mod-10.htm)
- [Juniper: Junos login classes](https://www.juniper.net/documentation/us/en/software/junos/user-access/topics/topic-map/junos-os-login-class-overview.html)
- [Juniper: confirmed commits](https://www.juniper.net/documentation/us/en/software/junos/cli/topics/topic-map/junos-configuration-commit.html)
- [Juniper: official Junos MCP](https://github.com/Juniper/junos-mcp-server)
- [Juniper: official Routing Director MCP and known issue](https://github.com/Juniper/routing-director-mcp-server)
- [HPE: GreenLake MCP documentation](https://developer.greenlake.hpe.com/docs/greenlake/mcp-server/public)
