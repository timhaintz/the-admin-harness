---
name: system-red-hat-rhel
description: Research Red Hat Enterprise Linux service failures and route scoped observations or recovery plans using official RHEL documentation and the official RHEL MCP preview when configured. Use for an identified RHEL release and existing authorised host access.
---

# Red Hat RHEL systems

Thin source/scope wrapper; no RHEL entitlement, server installation or runtime verification is supplied.

## Workflow

1. Record RHEL major/minor release, host, installed unit/package version, subscription context and effective account. The sources below cover RHEL 10; resolve other releases through their official guides.
2. Distinguish systemd current state, boot enablement, logs and the application's actual response. Collect ordinary-account evidence where available and expose missing privileged logs rather than granting unrestricted sudo.
3. Check [official MCP inventory](../../../docs/mcp-domains/systems-and-services.md#4-red-hat). The RHEL MCP is Developer Preview, not production support. Use only an already configured official server whose release, actual tools, SSH identity and effects match the task; do not enable write tools as diagnostic preparation.
4. Verify where observations originate: container-local evidence does not represent the unrestricted host. Preserve SSH host verification and keep private keys outside Git/chat. If no matching tool exists, use official docs and label live observations unavailable.
5. Check [upstream overlap](../../../docs/upstream-skill-register.md) and hand detailed procedures to an applicable configured official task skill. Produce scoped evidence, hypotheses and one proposed corrective plan.
6. Apply [admin-change-safety](../admin-change-safety/SKILL.md) before package/configuration/service/reboot effects. Keep recovery and independent application checks attached to the reviewed plan; a green unit or successful tool result is not enough.

First runtime proof requires an entitled disposable RHEL lab, diagnostic permission checks and independent application evidence. Preview tool availability is not a measured integration result.

## Sources

- [Red Hat: RHEL 10 systemd service management](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/using_systemd_unit_files_to_customize_and_optimize_your_system/managing-system-services-with-systemctl)
- [Red Hat: RHEL 10 sudo access](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html-single/security_hardening/index#managing-sudo-access_security-hardening)
- [Red Hat: official RHEL MCP Developer Preview](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/interacting_with_the_command-line_assistant/using-the-rhel-mcp-server-to-enable-ai-assistants-to-run-discover-and-troubleshoot-complex-issues)
- [Systems guide](../../../docs/admin-domains/systems-and-services.md)
