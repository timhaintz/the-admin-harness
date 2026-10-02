# Systems and services research guide

Status: source-backed research and proposed workflows. Sources checked **2 October 2026**. This guide adds documentation; it does not add installed tools, executable integrations, skills, or a provisioned workstation profile.

## Selection basis

These five organisations are an editorial shortlist for Windows server administration, enterprise Linux, and virtual infrastructure. They were selected for representative administrative coverage and available primary documentation. Entry numbers are identifiers, not a market-share or popularity ranking. Product examples are documentation contexts, not recommended versions or compatibility guarantees. Other operating systems, hypervisors, storage platforms, and service maintainers remain coverage gaps.

## 1. Broadcom (VMware)

- **Representative systems:** VMware vSphere, vCenter Server, and ESXi virtual infrastructure. [Broadcom's acquisition notice](https://investors.broadcom.com/news-releases/news-release-details/broadcom-completes-acquisition-vmware) establishes the parent organisation. [Broadcom's vCenter permission example](https://knowledge.broadcom.com/external/article/417071/create-custom-role-to-restrict-users-fro.html) explicitly covers vCenter 7.x/8.x; recheck procedures for another release.
- **Authority and prerequisites:** use the target's existing approved vCenter authentication and object-scoped role. Inventory visibility depends on assigned permissions and propagation; an empty result is not proof that resources do not exist. The [VM-list API reference](https://developer.broadcom.com/xapis/vsphere-automation-api/latest/api/vcenter/vm/get/) explicitly limits results to visible VMs and at most 4,000 matches. Select the target API version before implementation.
- **Proposed workflow lead:** correlate VM inventory, power state, and host/cluster placement with a reported service problem, then draft a capacity or recovery plan. Hypervisor operations and guest-OS operations require separate authority.
- **Proposed independent proof:** begin with a licensed isolated lab and a scoped inventory-only account. Compare API observations with the vSphere Client and the guest application's response. Reconfiguration, power operations, migrations, and snapshot removal remain separate approved changes; this guide supplies no runnable adapter.

## 2. Canonical

- **Representative systems:** Ubuntu Server and its packaged services. Canonical is Ubuntu's publisher; the [Ubuntu project page](https://ubuntu.com/about) lists its release lifecycle. The server documentation is updated over time, so record the installed release and package versions instead of treating the documentation's default page as a version pin.
- **Authority and prerequisites:** Ubuntu's [user-management guide](https://ubuntu.com/server/docs/how-to/security/user-management/) describes sudo-based administrative access; its [OpenSSH guide](https://ubuntu.com/server/docs/how-to/security/openssh-server/) covers authenticated remote access. Use existing approved SSH keys and trusted host identities, or the organisation's interactive login. Do not turn a diagnostic task into an unreviewed SSH or sudo policy change.
- **Proposed workflow lead:** investigate a service outage or package/configuration discrepancy and prepare a bounded recovery plan, with deployment-specific unit names and dependencies established from the target.
- **Proposed independent proof:** start with a disposable Ubuntu Server VM and synthetic application data. Check the service state, listening endpoint, and application response independently. Report inaccessible logs or insufficient privileges rather than escalating automatically.

## 3. Microsoft

- **Representative systems:** Windows Server, Windows Admin Center, and Hyper-V. The [management overview](https://learn.microsoft.com/en-us/windows-server/administration/overview) covers Windows Server 2025 and earlier supported contexts; match a procedure to the actual server edition, build, role, and management-tool version.
- **Authority and prerequisites:** Windows Admin Center gateway access and target-server authority are separate. Its [access documentation](https://learn.microsoft.com/en-us/windows-server/manage/windows-admin-center/plan/user-access-options) describes a Readers role through configured role-based access control and notes that the application does not itself enforce a security boundary. Reader access is a configured prerequisite, not something this harness installs. Use the organisation's Windows/Entra authentication flow; never collect a password in chat.
- **Proposed workflow lead:** inventory a named server, inspect service state and event evidence, and draft a service-recovery plan. A restart, role installation, account change, or Hyper-V modification requires an approved plan with target permissions and impact recorded.
- **Proposed independent proof:** use an authorised disposable Windows Server VM, compare observations with its management console, and separately test the affected application's health. Prove the account cannot modify the target before calling a diagnostic workflow read-only.

## 4. Red Hat

- **Representative systems:** Red Hat Enterprise Linux (RHEL) and its system services. [RHEL 10 service-management documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/using_systemd_unit_files_to_customize_and_optimize_your_system/managing-system-services-with-systemctl) describes unit listing, state, and lifecycle operations through systemd. Do not apply RHEL 10 details to a different major release without checking its guide.
- **Authority and prerequisites:** identify the host, release, installed packages, service unit, available logs, and existing authorised access. Red Hat's [sudo guidance](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html-single/security_hardening/index#managing-sudo-access_security-hardening) supports restricting elevated commands rather than granting unrestricted root access. Establish and verify that policy separately; this research page does not grant it.
- **Proposed workflow lead:** diagnose a failed service, relate its unit and logs to package/configuration state, and propose one reviewed corrective change. Prefer ordinary-user observations where permitted; privilege-dependent evidence must be reported as a gap if unavailable.
- **Proposed independent proof:** use an entitled disposable RHEL lab, compare service-manager state with a real application response, then check persistence after an explicitly approved reboot. Licence/subscription access and lab provisioning remain prerequisites.

## 5. SUSE

- **Representative systems:** SUSE Linux Enterprise Server (SLES), systemd, and YaST administration. The [SLES 15 SP7 administration guide](https://documentation.suse.com/en-us/sles/15-SP7/html/SLES-all/book-administration.html) and [systemd chapter](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-systemd.html) are the researched context; match service pack, enabled modules, and package versions before procedure reuse.
- **Authority and prerequisites:** use a named existing account and the target's actual PAM/sudo policy. SUSE's [sudo chapter](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-adm-sudo.html) notes that authentication behaviour depends on configuration; do not assume Ubuntu's sudo defaults. Existing subscription and media entitlement are separate from permission to operate the target.
- **Proposed workflow lead:** inspect a service's current and boot-time state, distinguish enablement from current health, and draft a narrow configuration or lifecycle change.
- **Proposed independent proof:** in an authorised disposable SLES lab, compare systemd and YaST observations, probe the synthetic application's endpoint, and verify the intended boot behaviour after an approved restart. Neither a green service status nor a successful tool response proves application health alone.

## Workflow and evaluation contract

For every proposed systems workflow, capture product/version, exact host or inventory scope, request, source references, evidence timestamps, effective identity/permissions, and capture gaps. An agent may research, diagnose, or draft a plan. Execution needs explicit human approval, a reviewed artifact, fresh state, an effect boundary, and recovery/validation steps under [the safety policy](../../AGENTS.md).

Suggested first evaluations are: a synthetic healthy service, a deliberately failed disposable service, insufficient diagnostic permissions, and a stale target/version mismatch. Require the agent to distinguish observed facts from hypotheses and service state from application health. No platform-level evaluation has been completed by adding this document; available tools, upstream skill overlaps, licence terms, and host compatibility must be validated before an implementation is advertised.

## Sources

- [Microsoft: Windows Server management overview](https://learn.microsoft.com/en-us/windows-server/administration/overview)
- [Microsoft: Windows Admin Center user access options](https://learn.microsoft.com/en-us/windows-server/manage/windows-admin-center/plan/user-access-options)
- [Red Hat: RHEL 10 service management](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/using_systemd_unit_files_to_customize_and_optimize_your_system/managing-system-services-with-systemctl)
- [Red Hat: RHEL 10 security hardening and sudo access](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html-single/security_hardening/index#managing-sudo-access_security-hardening)
- [Canonical: Ubuntu project, publisher, and lifecycle](https://ubuntu.com/about)
- [Canonical: Ubuntu Server user management](https://ubuntu.com/server/docs/how-to/security/user-management/)
- [Canonical: Ubuntu Server OpenSSH](https://ubuntu.com/server/docs/how-to/security/openssh-server/)
- [SUSE: SLES 15 SP7 administration guide](https://documentation.suse.com/en-us/sles/15-SP7/html/SLES-all/book-administration.html)
- [SUSE: SLES 15 SP7 systemd](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-systemd.html)
- [SUSE: SLES 15 SP7 sudo basics](https://documentation.suse.com/sles/15-SP7/html/SLES-all/cha-adm-sudo.html)
- [Broadcom: completed VMware acquisition](https://investors.broadcom.com/news-releases/news-release-details/broadcom-completes-acquisition-vmware)
- [Broadcom: scoped vCenter inventory permissions](https://knowledge.broadcom.com/external/article/417071/create-custom-role-to-restrict-users-fro.html)
- [Broadcom: vCenter VM-list API](https://developer.broadcom.com/xapis/vsphere-automation-api/latest/api/vcenter/vm/get/)
