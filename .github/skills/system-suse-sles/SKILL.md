---
name: system-suse-sles
description: Research SUSE SLES service or subscription issues and route Multi-Linux Manager or SUSEConnect MCP workflows only within their verified product scope. Use to organise diagnostic evidence and prepare bounded SUSE recovery plans.
---

# SUSE systems

Thin source/scope wrapper; no subscription, enrollment, server installation or runtime proof is supplied.

## Workflow

1. Identify SLES release/service pack, host/unit/package, enabled modules and effective account. Distinguish standalone host services, subscription registration and manager-controlled fleet work.
2. Match official release docs: the host-service references below cover 15 SP7. Separate current service state, boot enablement and application health. Check target PAM/sudo behaviour rather than assuming Ubuntu's authentication defaults.
3. Consult [official MCP scope](../../../docs/mcp-domains/systems-and-services.md#5-suse). Multi-Linux Manager/Uyuni MCP is a fleet-management Technology Preview; it is not arbitrary standalone host access. SUSEConnect MCP is documented for SLES 16, not proof of 15 SP7 compatibility.
4. For a configured matching server, inspect actual tool effects and authority: registration/extension changes and manager updates/reboots are effects. Verify HTTP protection/identity mapping, not merely backend login. Keep write tools disabled for diagnosis and secrets outside Git/chat.
5. If no matching official tool is available, use version-specific docs and state capture gaps. Check [upstream overlap](../../../docs/upstream-skill-register.md) for a configured applicable official task skill instead of recreating its detailed procedure.
6. Prepare a bounded plan with subscription/maintenance impact and independent state/health/recovery checks under [admin-change-safety](../admin-change-safety/SKILL.md). Access, enrollment and registration changes require their own approval.

Initial proof needs an entitled disposable SLES target; prove standalone and manager workflows separately. A server preview or registration result does not establish service/application health.

## Sources

- [SUSE: SLES 15 SP7 systemd](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-systemd.html)
- [SUSE: SLES 15 SP7 sudo](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-adm-sudo.html)
- [SUSE: Multi-Linux Manager MCP Technology Preview](https://www.suse.com/c/ai-assisted-linux-operations-mcp-suse-multi-linux-manager/)
- [Uyuni: official MCP upstream](https://github.com/uyuni-project/mcp-server-uyuni)
- [SUSE: SUSEConnect/SLES 16 MCP](https://documentation.suse.com/subscription/suseconnect/html/SLE-suseconnect-visibility/article-suseconnect-visibility.html)
