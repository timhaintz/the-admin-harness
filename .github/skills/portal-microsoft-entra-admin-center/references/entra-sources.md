# Microsoft Entra Admin Center Sources

This reference records the source-backed portal entry, official Microsoft documentation, and upstream Microsoft skill overlap for the Microsoft Entra Admin Center portal skill.

## Portal Source

Source: [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)

```text
groupName: Admin - Entra Portals
portalName: Microsoft Entra Admin Center
primaryURL: https://entra.microsoft.com
secondaryURLs:
  - https://aka.ms/MSEntraPortal
  - https://entra.microsoft.com/{tenant_id}/#home
note: Identity Management - Formerly Azure AD Admin Center
```

## Official Microsoft Documentation

| Area | Source-backed facts | Source |
| --- | --- | --- |
| Entra admin center overview | Microsoft Entra admin center is a web portal for configuring and managing Microsoft Entra products; it includes Entra ID, ID Protection, Identity Governance, Verified ID, and Global Secure Access areas. | [Microsoft Entra admin center overview](https://learn.microsoft.com/en-us/entra/fundamentals/entra-admin-center) |
| Microsoft Entra product family | Microsoft Entra covers identity, access, governance, customers/partners, workloads, and AI agents. The admin center and Microsoft Graph are management surfaces. | [What is Microsoft Entra?](https://learn.microsoft.com/en-us/entra/fundamentals/what-is-entra) |
| Conditional Access | Conditional Access is Microsoft's Zero Trust policy engine; admins with at least Security Reader can find it in the Entra admin center under Entra ID > Conditional Access. | [Conditional Access overview](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview) |
| Conditional Access troubleshooting | Troubleshooting should start from error details and sign-in logs. Avoid broad all-users/all-resources policies that can block the organization or admins. | [Troubleshoot Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/troubleshoot-conditional-access) |
| What If tool | The What If tool simulates sign-in conditions and is located at Entra ID > Conditional Access > Policies > What If. It does not evaluate service dependencies. | [Conditional Access What If tool](https://learn.microsoft.com/en-us/entra/identity/conditional-access/what-if-tool) |
| Sign-in logs | Sign-in logs answer who signed in, how, and what resource was accessed. In the admin center, use Entra ID > Monitoring & health > Sign-in logs with at least Reports Reader. | [Microsoft Entra sign-in logs](https://learn.microsoft.com/en-us/entra/identity/monitoring-health/concept-sign-ins) |
| App registration | App registration requires at least Application Developer, tenant selection, and Entra ID > App registrations > New registration. | [Register an application in Microsoft Entra ID](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app) |
| Redirect URIs | Redirect URIs are configured in App registrations > Authentication and have platform-specific restrictions. | [Add a redirect URI](https://learn.microsoft.com/en-us/entra/identity-platform/how-to-add-redirect-uri) |
| App credentials | Microsoft recommends certificates instead of client secrets before production and points to Key Vault for certificate access and lifetime management. | [Add and manage application credentials](https://learn.microsoft.com/en-us/entra/identity-platform/how-to-add-credentials) |
| Role best practices | Use least privilege, PIM, MFA, access reviews, fewer than five Global Administrators, and fewer than ten privileged role assignments. | [Microsoft Entra role best practices](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/best-practices) |
| Built-in roles | Built-in role docs list roles such as Reports Reader, Security Reader, Conditional Access Administrator, Application Developer, Application Administrator, Global Reader, and Global Administrator. | [Microsoft Entra built-in roles](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference) |
| Privileged Identity Management | PIM provides just-in-time, time-bound, and approval-based access for Microsoft Entra ID, Azure, Microsoft 365, Intune, and other services. | [Microsoft Entra Privileged Identity Management](https://learn.microsoft.com/en-us/entra/id-governance/privileged-identity-management/pim-configure) |

## Upstream Microsoft Skill Overlap

| Area | Upstream source | Routing decision |
| --- | --- | --- |
| App registration, OAuth, MSAL, API permissions, service principals | [microsoft/azure-skills entra-app-registration](https://github.com/microsoft/azure-skills/tree/main/skills/entra-app-registration) | Route to upstream when installed. Keep this portal skill focused on source-backed portal navigation, prerequisites, safety, and approval boundaries. |
| Microsoft Entra Agent ID | [microsoft/azure-skills entra-agent-id](https://github.com/microsoft/azure-skills/tree/main/skills/entra-agent-id) | Route to upstream when installed. Treat tenant identity changes as `change` or `dangerous` depending on scope. |
| Entra Suite PoC planning, Global Secure Access, ID Protection, Identity Governance, Verified ID, External Identities | [microsoft/Entra-POCAdvisor](https://github.com/microsoft/Entra-POCAdvisor) | Route PoC planning or deployment design to upstream when relevant. This portal skill can still provide navigation and safety framing. |

## Sources

- [msportals admin.json](https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json)
- [Microsoft Entra admin center overview](https://learn.microsoft.com/en-us/entra/fundamentals/entra-admin-center)
- [What is Microsoft Entra?](https://learn.microsoft.com/en-us/entra/fundamentals/what-is-entra)
- [Conditional Access overview](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Troubleshoot Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/troubleshoot-conditional-access)
- [Conditional Access What If tool](https://learn.microsoft.com/en-us/entra/identity/conditional-access/what-if-tool)
- [Microsoft Entra sign-in logs](https://learn.microsoft.com/en-us/entra/identity/monitoring-health/concept-sign-ins)
- [Register an application in Microsoft Entra ID](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app)
- [Add a redirect URI](https://learn.microsoft.com/en-us/entra/identity-platform/how-to-add-redirect-uri)
- [Add and manage application credentials](https://learn.microsoft.com/en-us/entra/identity-platform/how-to-add-credentials)
- [Microsoft Entra role best practices](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/best-practices)
- [Microsoft Entra built-in roles](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference)
- [Microsoft Entra Privileged Identity Management](https://learn.microsoft.com/en-us/entra/id-governance/privileged-identity-management/pim-configure)
- [microsoft/azure-skills entra-app-registration](https://github.com/microsoft/azure-skills/tree/main/skills/entra-app-registration)
- [microsoft/azure-skills entra-agent-id](https://github.com/microsoft/azure-skills/tree/main/skills/entra-agent-id)
- [microsoft/Entra-POCAdvisor](https://github.com/microsoft/Entra-POCAdvisor)
- [docs/upstream-skill-register.md](../../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../../docs/source-register.md)