# Official MCP inventory: systems and services

Checked **2 October 2026** against the five organisations in the [systems guide](../admin-domains/systems-and-services.md). This is a bounded source review, not a claim that unlisted servers do not exist. **No Windows/Linux/vSphere target integration was runtime-tested.** Microsoft Learn native macOS Codex registration, discovery, search and fetch passed; [validation evidence](../evals/admin-domain-validation.md) records their public-documentation scope. Local [skills](../../.github/skills/admin-systems-services/SKILL.md) route research and planning; they do not supply or configure these servers.

## 1. Broadcom / VMware

- **Availability:** no officially published vCenter/ESXi administration MCP implementation verified in the reviewed Broadcom product/API sources.
- **Boundary:** the [VMware Private AI MCP-server API](https://developer.broadcom.com/xapis/vmware-private-ai-service-api/latest/mcp-servers/) manages registrations for existing servers; it does not establish a published vSphere adapter.
- **Setup, authority and fallback:** no verified server transport or setup to recommend. Use version-matched vSphere documentation and approved existing management access. Preserve inventory permission scope and incomplete results; do not substitute a community server.
- **Runtime status:** not tested; target access and supported releases unresolved.

## 2. Canonical

- **Availability:** no official Ubuntu Server administration MCP implementation verified in the reviewed Canonical/Ubuntu/Multipass sources.
- **Publisher distinction:** Canonical's [Multipass repository](https://github.com/canonical/multipass) places its MCP integration lead under community-led integrations. That lead is excluded from this official-server catalog.
- **Setup, authority and fallback:** no verified official server transport/setup. Use Ubuntu release-specific documentation and existing approved SSH/sudo authority. [Canonical's Copilot collection](https://github.com/canonical/copilot-collections) is an official authoring-resource lead, not evidence of a packaged Ubuntu operations skill or MCP adapter.
- **Runtime status:** not tested; no Ubuntu target compatibility established.

## 3. Microsoft

- **Verified implementation:** [Microsoft Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp) searches/fetches public documentation. It provides **documentation grounding**, not Windows Server/Hyper-V observations or administration.
- **Transport/setup:** official [client setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started) documents remote Streamable HTTP at `https://learn.microsoft.com/api/mcp`; public documentation access needs no target credentials.
- **Authority:** documentation retrieval confers no server, Windows Admin Center, Entra or tenant authority. Route Windows documentation through the existing Learn skill and upstream `microsoft-docs` overlap in [the register](../upstream-skill-register.md).
- **Runtime status:** native macOS Codex setup/discovery passed (three tools), with public search and fetch recorded in [validation evidence](../evals/admin-domain-validation.md). No Windows-target administration was tested.

## 4. Red Hat

- **Verified implementation:** the [MCP server for RHEL](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/interacting_with_the_command-line_assistant/using-the-rhel-mcp-server-to-enable-ai-assistants-to-run-discover-and-troubleshoot-complex-issues) is **Developer Preview**, for testing rather than production/business-critical use. Its documented scope includes service, process, log, network and storage diagnostics.
- **Transport/setup:** official RHEL 10 instructions describe local stdio through the `linux-mcp-server` package or Red Hat's published container. Match the documented package/image and target release before configuration; do not infer a remote hosted endpoint.
- **Authority:** remote targets use existing SSH access; tool authority follows that account. Write tools are disabled by default but can be enabled. A container's local view is its container, not unrestricted host observation. Retain SSH host verification and keep keys outside Git/chat.
- **Runtime status:** not tested; RHEL entitlement, exact tool/version scope and denied writes require disposable-lab proof.

## 5. SUSE

- **Verified fleet implementation:** SUSE's [Multi-Linux Manager announcement](https://www.suse.com/c/ai-assisted-linux-operations-mcp-suse-multi-linux-manager/) labels its MCP **Technology Preview v0.5** and links the official [Uyuni upstream server](https://github.com/uyuni-project/mcp-server-uyuni). It covers managed fleet inventory/actions, rather than arbitrary standalone SLES shell access.
- **Transport/setup and authority:** upstream supports local stdio (default) and HTTP, local Python/container setup and existing manager credentials. Write tools are disabled by default. HTTP without `UYUNI_AUTH_SERVER` is unauthenticated; verify OAuth/identity mapping, TLS and scoped backend authority before any shared use. A preview label is not a production-support promise.
- **Separate official implementation:** the [SUSEConnect visibility guide](https://documentation.suse.com/subscription/suseconnect/html/SLE-suseconnect-visibility/article-suseconnect-visibility.html) documents the SLES **16** `mcp-server-suseconnect` package and stdio `suseconnect-mcp` server. Registration/extension inspection and activation/deactivation/registration effects share that tool surface. This does not prove SLES 15 SP7 compatibility.
- **Runtime status:** neither implementation tested; manager enrollment, subscription authority, actual server version and tool permissions remain prerequisites.

## Routing and proof

Choose a server by product and task, not organisation name. Before using a configured official server, inspect its current publisher/source, tool schema, product version, transport protection and effective target identity. Keep diagnostic results separate from permission failures, capture gaps and proposed effects. Use [admin-change-safety](../../.github/skills/admin-change-safety/SKILL.md) for changes; installation or enabling write tools is not implied by research routing.

For a first trial, use an authorised disposable target with synthetic data, a scoped diagnostic identity, independently observed service/application health, and a recorded denied-effect check. A successful MCP handshake or tool listing establishes neither target access nor application health. An unavailable server falls back to official documentation and a proposed plan with the missing runtime evidence stated.

## Sources

- [Broadcom: VMware Private AI MCP registrations](https://developer.broadcom.com/xapis/vmware-private-ai-service-api/latest/mcp-servers/)
- [Canonical: Multipass and community-led integrations](https://github.com/canonical/multipass)
- [Canonical: Copilot collections](https://github.com/canonical/copilot-collections)
- [Microsoft: Learn MCP](https://learn.microsoft.com/en-us/training/support/mcp)
- [Microsoft: Learn MCP setup](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Red Hat: MCP server for RHEL, Developer Preview](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/interacting_with_the_command-line_assistant/using-the-rhel-mcp-server-to-enable-ai-assistants-to-run-discover-and-troubleshoot-complex-issues)
- [SUSE: Multi-Linux Manager MCP Technology Preview](https://www.suse.com/c/ai-assisted-linux-operations-mcp-suse-multi-linux-manager/)
- [Uyuni upstream: MCP server setup, transports and permissions](https://github.com/uyuni-project/mcp-server-uyuni)
- [SUSE: SUSEConnect visibility and SLES 16 MCP](https://documentation.suse.com/subscription/suseconnect/html/SLE-suseconnect-visibility/article-suseconnect-visibility.html)
- [Upstream skill overlap register](../upstream-skill-register.md)
- [Local protocol/skill validation evidence](../evals/admin-domain-validation.md)
