# Intune Portal Sources

Use this file for source-backed grounding when the `portal-microsoft-intune-admin-center` skill is active.

## Portal Entry

Source: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json`

Upstream fields:

- `groupName`: `Microsoft 365 Admin Portals`
- `portalName`: `Microsoft Intune Admin Center`
- `primaryURL`: `https://intune.microsoft.com`
- `secondaryURLs`:
  - `https://aka.ms/in`
  - `https://rc-devicemanagement.portal.azure.com`
  - `https://intune.microsoft.com/{tenant_id}`
- `note`: `Endpoint Manager`
- `iconUrl`: `https://getyako.com/ms/logos/intune/intune.png`

Tenant-specific URL caveat: do not persist tenant IDs in repo files, durable logs, evals, screenshots, or examples.

## Microsoft Learn MCP Grounding

Use Microsoft Learn MCP when configured. Suggested searches:

- `Microsoft Intune admin center walkthrough`
- `Intune device compliance policy overview`
- `Intune create compliance policy requirements`
- `Intune monitor device compliance policy reports`
- `Intune role based access control built in roles least privilege`

If MCP is unavailable, use the official Microsoft Learn pages listed below.

## Official Microsoft Learn Pages

| Task area | Source |
| --- | --- |
| Admin center navigation, workloads, dashboard, settings, and support | [Tutorial: Walkthrough Microsoft Intune Admin Center](https://learn.microsoft.com/en-us/intune/fundamentals/tutorial-admin-center-walkthrough) |
| Compliance policy settings, device compliance policies, Conditional Access integration, and monitoring overview | [Use compliance policies to set rules for devices you manage with Intune](https://learn.microsoft.com/en-us/intune/device-security/compliance/overview) |
| Compliance policy requirements, create flow, actions for noncompliance, assignments, scope tags, refresh cycles, and resulting status | [Create a compliance policy in Microsoft Intune](https://learn.microsoft.com/en-us/intune/device-security/compliance/create-policy) |
| Compliance dashboard, policy reports, known reporting behaviors, device-reported values, policy conflicts, and default compliance evaluation | [Monitor results of your Intune device compliance policies](https://learn.microsoft.com/en-us/intune/device-security/compliance/monitor-policy) |
| Built-in roles, custom roles, Entra roles with Intune access, least privilege, PIM, role assignments, and permission monitoring | [Role-based access control (RBAC) with Microsoft Intune](https://learn.microsoft.com/en-us/intune/fundamentals/role-based-access-control/overview) |
| Learn MCP setup and recommended use | [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started) |

## Investigation Notes

- Compliance policy settings are tenant-wide and separate from device compliance policy settings.
- Microsoft recommends marking devices with no compliance policy assigned as noncompliant when using Conditional Access.
- Managed devices must be enrolled into Intune to receive device compliance policies and report compliance.
- Compliance policy reports reflect device check-in and policy refresh timing; reports might not show recent changes immediately.
- Device-reported values in compliance reports are not validated by Intune and should not be used as the sole basis for administrative action.
- The Intune RBAC article recommends least-privileged built-in or custom Intune roles for daily administration and discourages routine Global Administrator or Intune Administrator use.

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Microsoft Intune admin center walkthrough](https://learn.microsoft.com/en-us/intune/fundamentals/tutorial-admin-center-walkthrough)
- [Device compliance overview](https://learn.microsoft.com/en-us/intune/device-security/compliance/overview)
- [Create a compliance policy](https://learn.microsoft.com/en-us/intune/device-security/compliance/create-policy)
- [Monitor compliance policies](https://learn.microsoft.com/en-us/intune/device-security/compliance/monitor-policy)
- [Intune RBAC overview](https://learn.microsoft.com/en-us/intune/fundamentals/role-based-access-control/overview)
- [docs/source-register.md](../../../../docs/source-register.md)
