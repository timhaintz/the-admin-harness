# Networking research guide

Status: source-backed research and proposed workflows. Sources checked **2 October 2026**. Local [network routing instructions](../../.github/skills/admin-networking/SKILL.md) and five organisation skills with evaluation fixtures are now authored. They do not install tools, create target credentials, provision vendor appliances, or establish target-runtime integration. The [official MCP inventory](../mcp-domains/networking.md) records verified publication and product boundaries separately from configuration and runtime proof.

## Selection basis

These five organisations are an editorial shortlist spanning enterprise switching/routing and network security, selected for administrative coverage and primary documentation. Entry numbers identify organisations; they are not a market-share or adoption ranking. HPE includes its Juniper family because [HPE completed that acquisition on 2 July 2025](https://www.hpe.com/us/en/newsroom/press-release/2025/07/hewlett-packard-enterprise-closes-acquisition-of-juniper-networks-to-offer-industry-leading-comprehensive-cloud-native-ai-driven-portfolio.html). Product examples and documented versions are research contexts, not recommendations or support promises. Other vendors, open network operating systems, wireless platforms, and ISP-specific systems remain coverage gaps.

## 1. Arista Networks

- **Representative systems:** EOS switching/routing and eAPI. The official manuals currently show EOS 4.36.2F for [user security](https://www.arista.com/en/um-eos/eos-user-security) and [API/session management](https://www.arista.com/en/um-eos/eos-session-management-commands); record and select the installed EOS release before copying behaviour from these rolling URLs.
- **Authority and prerequisites:** use existing AAA and role-based command authorisation over trusted SSH or HTTPS. The built-in network-operator role allows EXEC-mode commands, which is not equivalent to an independently proven read-only identity. Evaluate a restricted diagnostic role and the exact permitted operations rather than inferring safety from a role name. API management must already be enabled or be prepared through an approved change.
- **Proposed workflow lead:** correlate interface, route, and neighbour observations with a reported connectivity issue, then propose a narrowly scoped correction.
- **Proposed independent proof:** in an entitled isolated EOS lab, compare CLI/eAPI observations with endpoint probes and expected topology. Test that prohibited lifecycle/configuration actions fail, and report any difference between CLI and API authorisation. No EOS adapter or appliance distribution is supplied here.

## 2. Cisco

- **Representative systems:** IOS XE routing/switching and its model-based management interfaces. The researched [IOS XE 17.18.x RESTCONF guide](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/restconf_protocol.html) describes authenticated API access. Product family, device model, software train, enabled management interface, and YANG model support must be identified first.
- **Authority and prerequisites:** use existing vendor-supported AAA and a trusted management connection. The RESTCONF guide's AAA example admits privilege-15 users; the [model-based AAA guide](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/model-based-aaa.html) states traditional IOS command authorisation does not apply to NETCONF/RESTCONF. Do not describe API access or a CLI role as a proven read-only boundary without checking the actual model-based policy.
- **Proposed workflow lead:** investigate an interface or route discrepancy, explain observations against intended topology, and draft a bounded configuration change.
- **Proposed independent proof:** on an entitled isolated lab, compare authorised device telemetry with endpoint connectivity. Prove the diagnostic identity's denied writes separately. Enabling an API or changing AAA is itself a reviewed change, not an automatic preparation step.

## 3. Fortinet

- **Representative systems:** FortiGate/FortiOS firewall management. The researched [FortiOS 7.6.2 administrator-profile guide](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/294491) describes per-profile capabilities. Establish the device, release, VDOM scope, management endpoint, and account profile before planning an operation.
- **Authority and prerequisites:** [Fortinet's REST API administrator guide](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/399023) recommends minimum permissions, restricted trusted hosts, and a token; creating that account requires super_admin authority. Account creation and token generation are separate approved preparation, not diagnostic access. Store any resulting token through an approved credential store, never chat or committed configuration. Some developer references require a Fortinet Development Network account.
- **Proposed workflow lead:** investigate a synthetic allowed/blocked flow by relating policy, interface, route, and available logs; draft a minimal policy correction without changing live policy.
- **Proposed independent proof:** use an entitled isolated firewall with an explicit read-only profile. Compare permitted observations with synthetic traffic on both sides and test denied configuration requests. Log visibility, VDOM scope, and profile limitations must be visible in the result.

## 4. HPE (Aruba Networking and Juniper)

- **Representative systems:** Aruba Networking AOS-CX switches and Juniper Junos routing/switching/security. These are separate operating systems and policy models within one parent organisation. Research contexts include [AOS-CX 10.15 API access modes](https://arubanetworking.hpe.com/techdocs/AOS-CX/10.15/HTML/rest_v10-0x/Content/Chp_Intro/res-api-acc-mod-10.htm) and [Junos login classes](https://www.juniper.net/documentation/us/en/software/junos/user-access/topics/topic-map/junos-os-login-class-overview.html).
- **Authority and prerequisites:** identify the actual family, hardware, release, management endpoint, and authorised account. Junos offers a read-only login class, while its operator class also permits reset-related operations. AOS-CX's documented read-only API mode has exceptions, including configuration/firmware upload; its name alone is not a universal no-mutation guarantee. Verify specific operations and permissions. Use approved vendor authentication and trusted SSH/TLS identities; do not collect credentials in chat.
- **Proposed workflow lead:** diagnose a routing or interface problem from scoped state and topology. For a future Junos change, assess its [confirmed-commit rollback mechanism](https://www.juniper.net/documentation/us/en/software/junos/cli/topics/topic-map/junos-configuration-commit.html) against the exact release and recovery plan; do not assume it guarantees workload health.
- **Proposed independent proof:** use separate authorised AOS-CX and Junos labs, compare device observations with end-to-end traffic, and test denied actions. A single-family result does not establish coverage of HPE's other networking products.

## 5. Palo Alto Networks

- **Representative systems:** PAN-OS next-generation firewalls and Panorama management. Its [XML API overview](https://docs.paloaltonetworks.com/ngfw/api/getting-started) includes configuration and operational actions; select the actual PAN-OS/Panorama versions and managed scope before task guidance.
- **Authority and prerequisites:** use the vendor's [API authentication guidance](https://docs.paloaltonetworks.com/ngfw/api/api-authentication-and-security) and [administrative-role model](https://docs.paloaltonetworks.com/panorama/getting-started/panorama-overview/role-based-access-control/administrative-roles). API access and keys require authorised preparation. Prefer the supported key header over URLs that may be logged, protect the key outside Git/chat, and verify granular role access. Operational-mode APIs include effects such as restart; an operation being labelled operational is not proof it is diagnostic.
- **Proposed workflow lead:** investigate a synthetic flow against the relevant rule, route, device group/template, and available traffic evidence; prepare a reviewed policy plan.
- **Proposed independent proof:** in an entitled isolated firewall/Panorama lab, compare configuration observations with traffic outcome and independently observed job/device state. A successful API response or completed commit alone does not establish that the intended traffic is healthy.

## Workflow and evaluation contract

Every proposed network workflow needs the exact management and traffic scope, product/release, relevant topology, effective role, permitted operations, source references, evidence timestamps, and capture gaps. A read-only query can still expose secrets or topology; redact collected evidence before sharing. Keep raw credentials and device configuration outside the public repository.

Classify operations by their effects, not just HTTP method, command mode, or role label. Reconfiguration, packet capture, active probes, policy commits, account/API enablement, firmware updates, and reboots need their own scope and approval assessment. A change plan must include a management-access recovery path and traffic validation under [the safety policy](../../AGENTS.md).

Suggested first evaluations are: synthetic reachable/unreachable paths, a permission-denied diagnostic, inconsistent device/endpoint evidence, and a stale firmware/topology assumption. Use static synthetic fixtures before licensed lab trials. No network-device evaluation was completed by adding this guide; entitlement, image distribution rights, upstream tool overlap, and host compatibility remain unresolved implementation prerequisites.

## Sources

- [Local network router and organisation routes](../../.github/skills/admin-networking/SKILL.md)
- [Official networking MCP inventory](../mcp-domains/networking.md)
- [Cisco: IOS XE 17.18.x RESTCONF](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/restconf_protocol.html)
- [Cisco: IOS XE 17.18.x model-based AAA](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/prog/configuration/1718/b-1718-programmability-cg/model-based-aaa.html)
- [HPE: completion of the Juniper acquisition](https://www.hpe.com/us/en/newsroom/press-release/2025/07/hewlett-packard-enterprise-closes-acquisition-of-juniper-networks-to-offer-industry-leading-comprehensive-cloud-native-ai-driven-portfolio.html)
- [HPE Aruba Networking: AOS-CX 10.15 REST API access modes](https://arubanetworking.hpe.com/techdocs/AOS-CX/10.15/HTML/rest_v10-0x/Content/Chp_Intro/res-api-acc-mod-10.htm)
- [Juniper: Junos login classes](https://www.juniper.net/documentation/us/en/software/junos/user-access/topics/topic-map/junos-os-login-class-overview.html)
- [Juniper: Junos configuration commit and confirmation](https://www.juniper.net/documentation/us/en/software/junos/cli/topics/topic-map/junos-configuration-commit.html)
- [Arista: EOS user security](https://www.arista.com/en/um-eos/eos-user-security)
- [Arista: EOS API/session management](https://www.arista.com/en/um-eos/eos-session-management-commands)
- [Fortinet: FortiOS 7.6.2 administrator profiles](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/294491)
- [Fortinet: FortiOS 7.6.2 REST API administrator](https://docs.fortinet.com/document/fortigate/7.6.2/administration-guide/399023)
- [Palo Alto Networks: PAN-OS XML API overview](https://docs.paloaltonetworks.com/ngfw/api/getting-started)
- [Palo Alto Networks: API authentication and security](https://docs.paloaltonetworks.com/ngfw/api/api-authentication-and-security)
- [Palo Alto Networks: Panorama administrative roles](https://docs.paloaltonetworks.com/panorama/getting-started/panorama-overview/role-based-access-control/administrative-roles)
