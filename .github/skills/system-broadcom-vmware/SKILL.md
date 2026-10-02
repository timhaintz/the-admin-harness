---
name: system-broadcom-vmware
description: Research Broadcom VMware vCenter/vSphere inventory and prepare scoped diagnostic or lifecycle plans using official version and permission references. Use for VMware management-plane questions; resolve guest OS service work separately.
---

# Broadcom / VMware systems

Thin source/scope wrapper; no vSphere adapter or runtime support is established.

## Workflow

1. Identify vCenter/ESXi release, named inventory boundary, VM identifiers, effective account and intended question. Distinguish managed inventory from the guest OS and application.
2. Match the permission/API references below to that release. A Read-only role must be assigned at the intended object scope with propagation reviewed; an account's visibility is not the complete estate.
3. Inspect only already authorised tools and current returned scope. The documented VM-list API limits results to 4,000 visible VMs; empty/truncated results do not establish absence. Retain timestamps, filters, permission gaps and pagination/limit handling in the answer.
4. Check [official MCP research](../../../docs/mcp-domains/systems-and-services.md#1-broadcom--vmware). No vCenter/ESXi MCP implementation was verified here; Private AI MCP registration APIs do not supply one. If no matching official tool is configured, use official docs and state that live inventory remains unobserved.
5. Consult [upstream overlap](../../../docs/upstream-skill-register.md); route to a verified applicable official task skill if configured. Keep local output to scoped evidence and a proposed plan.
6. Send VM power, snapshot, migration, permission or host changes through [admin-change-safety](../admin-change-safety/SKILL.md), preserving workload impact and recovery evidence. Require fresh target state before effects and independently check guest/application health afterwards.

For first proof, use an entitled disposable inventory, compare management-console visibility with collected results, and keep guest health independent of VM power state. Do not broaden permissions to hide a collection gap.

## Sources

- [Broadcom: vCenter 7.x/8.x scoped Read-only role](https://knowledge.broadcom.com/external/article/417071/create-custom-role-to-restrict-users-fro.html)
- [Broadcom: vCenter VM-list API](https://developer.broadcom.com/xapis/vsphere-automation-api/latest/api/vcenter/vm/get/)
- [Broadcom: Private AI MCP registration API](https://developer.broadcom.com/xapis/vmware-private-ai-service-api/latest/mcp-servers/)
- [Systems guide](../../../docs/admin-domains/systems-and-services.md)
