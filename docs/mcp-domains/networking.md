# Official MCP inventory: networking

Checked **2 October 2026** for the five organisations in the [networking guide](../admin-domains/networking.md). This bounded review records official sources and product boundaries, not worldwide absence of unlisted servers. **No listed server was installed, authenticated, connected to a target, or runtime-tested for this catalog.** The local [network skills](../../.github/skills/admin-networking/SKILL.md) are research/planning routes, not installed network adapters.

## 1. Arista Networks

- **Availability:** no official EOS/CloudVision administration MCP implementation verified in the reviewed Arista manuals and vendor-owned repository discovery.
- **Boundary and fallback:** documented EOS eAPI is not itself an MCP server. No verified server transport/setup is provided; use release-matched EOS documentation and existing approved access. Check actual command permissions rather than trusting a role name.
- **Runtime status:** not tested; no device/server/host compatibility established.

## 2. Cisco

- **Documentation implementation:** [Cisco DevNet Content Search MCP](https://github.com/CiscoDevNet/devnet-content-search-mcp), linked by [Cisco's announcement](https://blogs.cisco.com/developer/devnet-content-search-mcp-server), searches Meraki/Catalyst Center API documentation. Its remote HTTP setup uses `https://devnet.cisco.com/v1/foundation-search-mcp/mcp`, without target credentials. It does not inspect a network. Upstream agent/prompt examples are **experimental reference samples**, not a certified task-skill pack.
- **Meraki implementation:** [official Meraki MCP documentation](https://developer.cisco.com/meraki/api-v1/mcp-server/) publishes Cisco-hosted `https://mcp.meraki.com/mcp` and links its [official self-hosted source](https://github.com/CiscoDevNet/cisco-meraki-mcp). Hosted HTTP tools expose curated read-only Dashboard data using an API key as a bearer credential. Use a read-only Dashboard identity; the key's underlying API authority matters independently. Hosted coverage excludes Federal/GovCloud/localised environments, and the hosted server currently does not enforce Dashboard API IP restrictions. Keep credentials outside chat/Git and check the client/authentication method supported by current docs.
- **Catalyst Center implementation:** [Cisco's networking announcement](https://blogs.cisco.com/developer/build-agentic-networking-experiences-with-meraki-and-catalyst-center-mcp-servers) links the [official source/setup](https://github.com/cisco-en-programmability/catc-mcp-oss). Local Docker supports Streamable HTTP or stdio; select the release branch matching the controller. The server uses the configured controller account and **does not enforce read-only authority**; generated tools may mutate configuration. Local HTTP has no inbound authentication layer: keep it private or provide reviewed ingress authentication/TLS. Preserve controller TLS verification. Health/readiness checks do not prove a controller API request succeeded.
- **Runtime status:** all three source-verified only; no client, Dashboard or controller trial.

## 3. Fortinet

- **Availability:** no official externally configurable FortiGate administration MCP server/setup verified in the reviewed FortiOS/FortiManager product sources.
- **Boundary:** the [FortiManager 8.0 FortiAI data-flow note](https://docs.fortinet.com/document/fortimanager/8.0.0/ai-transparency-note/202884/4-data-flows-protection-and-retention) describes an internal MCP path. It does not publish a general external FortiGate server endpoint, client transport or installation contract.
- **Authority and fallback:** use FortiOS release-specific API/profile documentation and approved scoped access; no community server substitution. API-account creation remains a separate authorised change.
- **Runtime status:** not tested; an internal product integration does not establish local harness connectivity.

## 4. HPE (Aruba Networking and Juniper)

- **Junos implementation:** [Juniper's official Junos MCP source](https://github.com/Juniper/junos-mcp-server) supports local Python/container setup, stdio and Streamable HTTP, with existing SSH/key target access. It can load/commit configuration as well as inspect devices. Current HTTP startup requires a valid token file unless an explicit loopback-only development bypass is chosen. Command guardrails do not replace scoped device authority or reviewed plans; preserve host identities and keep mappings/keys/tokens outside Git.
- **Routing Director implementation:** the [Juniper product guide](https://www.juniper.net/documentation/us/en/software/juniper-routing-director2.9.0/user-guide/topics/topic-map/mcp-server-use.html) links [official upstream](https://github.com/Juniper/routing-director-mcp-server), whose reviewed README describes v2.10.0, Python, stdio/Streamable HTTP and controller username/password or API-token access. It supports observations and changes. HTTP authentication is enabled only when its token file exists; its published known issue says the operational blacklist does not block destructive configuration actions. Match controller/server versions and configure a protected boundary before trials.
- **Adjacent HPE implementation:** [GreenLake MCP docs/setup](https://developer.greenlake.hpe.com/docs/greenlake/mcp-server/public) link [HPE-owned source](https://github.com/HewlettPackard/gl-mcp). Local stdio examples use Python/uv and OAuth2 client credentials scoped to a workspace; HPE describes read-only workspace APIs. This is GreenLake workspace coverage, **not an AOS-CX or Junos device adapter**.
- **Runtime status:** none tested; one Juniper result cannot establish Aruba or other HPE-family coverage.

## 5. Palo Alto Networks

- **Verified adjacent implementation:** Palo Alto Networks [publishes Cortex MCP](https://www.paloaltonetworks.com/blog/security-operations/introducing-the-cortex-mcp-server/). The announcement labels the December 2025 launch open beta; do not infer today's support phase from that historical label.
- **Setup and authority:** indexed official [installation documentation](https://docs-cortex.paloaltonetworks.com/r/Cortex/Cortex-MCP-server/Install-the-Cortex-MCP-server) describes a tenant-download package, local Docker or Python/Poetry, stdio by default and optional Streamable HTTP. Target access uses a Cortex API URL, key and key ID, limited by role/scope and tenant quotas. Prefer the minimum required role, expiration and protected secret storage; broad API keys can allow effects. Review downloaded/custom/updated tool surfaces before use.
- **Boundary and source gap:** this is Cortex security-operations coverage, not a verified PAN-OS/Panorama adapter. No official PAN-OS/Panorama administration MCP implementation verified in this review. Direct legacy Cortex documentation links redirected to the new portal during the check; revalidate current setup/download instructions before configuration.
- **Runtime status:** source availability verified; download, client protocol, auth and tenant/device integration untested.

## Routing and proof

Use a configured official MCP only when its exact product, installed version, tool effects and effective identity match the task. Documentation search cannot supply live-device evidence. Return missing coverage clearly and fall back to official product documentation; do not invent tools or add third-party servers. Route applicable upstream task skills through [the overlap register](../upstream-skill-register.md), preserving [admin-change-safety](../../.github/skills/admin-change-safety/SKILL.md).

A proposed first trial uses an entitled isolated target, synthetic topology/traffic, verified diagnostic permissions, a denied-effect check and independent endpoint/device evidence. Discovery, a process health check or a successful commit response is insufficient to prove traffic health. Changes, active probes and packet capture need separately scoped authority and reviewed effect/verification plans.

## Sources

- [Arista: EOS API/session management](https://www.arista.com/en/um-eos/eos-session-management-commands)
- [Cisco: DevNet MCP announcement](https://blogs.cisco.com/developer/devnet-content-search-mcp-server)
- [CiscoDevNet: Content Search MCP setup and experimental references](https://github.com/CiscoDevNet/devnet-content-search-mcp)
- [Cisco: Meraki MCP setup and limits](https://developer.cisco.com/meraki/api-v1/mcp-server/)
- [CiscoDevNet: Meraki MCP source](https://github.com/CiscoDevNet/cisco-meraki-mcp)
- [Cisco: Meraki/Catalyst Center MCP publication](https://blogs.cisco.com/developer/build-agentic-networking-experiences-with-meraki-and-catalyst-center-mcp-servers)
- [Cisco: Catalyst Center MCP source and authority limits](https://github.com/cisco-en-programmability/catc-mcp-oss)
- [Fortinet: FortiManager FortiAI internal data flow](https://docs.fortinet.com/document/fortimanager/8.0.0/ai-transparency-note/202884/4-data-flows-protection-and-retention)
- [Juniper: Junos MCP source and setup](https://github.com/Juniper/junos-mcp-server)
- [Juniper: Routing Director product MCP guide](https://www.juniper.net/documentation/us/en/software/juniper-routing-director2.9.0/user-guide/topics/topic-map/mcp-server-use.html)
- [Juniper: Routing Director MCP source, auth and known issue](https://github.com/Juniper/routing-director-mcp-server)
- [HPE: GreenLake MCP documentation](https://developer.greenlake.hpe.com/docs/greenlake/mcp-server/public)
- [HPE: GreenLake MCP source](https://github.com/HewlettPackard/gl-mcp)
- [Palo Alto Networks: Cortex MCP publication](https://www.paloaltonetworks.com/blog/security-operations/introducing-the-cortex-mcp-server/)
- [Palo Alto Networks: indexed Cortex MCP installation guide; legacy URL redirects](https://docs-cortex.paloaltonetworks.com/r/Cortex/Cortex-MCP-server/Install-the-Cortex-MCP-server)
- [Upstream skill overlap register](../upstream-skill-register.md)
