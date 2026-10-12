---
name: network-cisco
description: Route Cisco IOS XE, Meraki, or Catalyst Center network research and scoped diagnostics through official product documentation and matching official MCP integrations when configured. Use to prepare bounded network plans while preserving controller/device and API authority boundaries.
---

# Cisco networking

Thin source/scope wrapper; no Cisco appliance, MCP installation or runtime proof is supplied.

## Workflow

1. Resolve IOS XE versus Meraki versus Catalyst Center, device/controller release, network/site scope, models and intended traffic path. Match documentation and controller/server release before tool use.
2. Check [official MCP inventory](../../../docs/mcp-domains/networking.md#2-cisco). DevNet Content Search grounds Meraki/Catalyst Center API documentation only. Meraki data MCP and Catalyst Center target MCP are separate implementations; neither establishes arbitrary IOS XE access.
3. Use a configured matching official tool only after inspecting actual schema, operation effects and target identity. Meraki needs a read-only Dashboard account; hosted IP restrictions differ from direct API access. Catalyst Center MCP does not enforce read-only authority, so inspect generated tools and keep its unauthenticated local HTTP endpoint protected.
4. For IOS XE, verify model-based AAA/NACM for NETCONF/RESTCONF. Traditional CLI command authorisation does not establish API restrictions; do not copy privilege-15 examples into a diagnostic identity. API enablement/account preparation is a reviewed change.
5. Collect scoped interface/route/controller evidence, timestamps and gaps; correlate with intended topology and independent traffic observations. In permission reviews, state that permitted route reads and denied writes establish an access boundary, not traffic/workload health; specify the separate traffic check. If MCP is unavailable or the wrong product, use official docs and mark live evidence missing.
6. Consult [upstream overlap](../../../docs/upstream-skill-register.md) for applicable configured official skills; Cisco's experimental reference prompts are not certified operational procedures. Keep local output to evidence and a proposed plan.
7. Apply [admin-change-safety](../admin-change-safety/SKILL.md) to configuration, account/API, probe/capture, firmware or lifecycle effects. Preserve management recovery and independent traffic checks; process health does not prove target API access or a healthy network.

Initial proof uses entitled isolated product-specific targets and synthetic traffic. One Meraki/controller trial does not establish IOS XE coverage.

## Sources

- [Cisco: IOS XE 17.18 RESTCONF](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/restconf_protocol.html)
- [Cisco: IOS XE 17.18 model-based AAA](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/model-based-aaa.html)
- [CiscoDevNet: official documentation MCP](https://github.com/CiscoDevNet/devnet-content-search-mcp)
- [Cisco: official Meraki MCP setup and limits](https://developer.cisco.com/meraki/api-v1/mcp-server/)
- [Cisco: official Catalyst Center MCP authority/setup](https://github.com/cisco-en-programmability/catc-mcp-oss)
