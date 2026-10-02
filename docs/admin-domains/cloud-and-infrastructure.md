# Cloud and infrastructure: organisation and workflow research

Checked: 2026-10-02. Status: research and proposed coverage; this page does not implement cloud adapters, deployment automation, a provisioner, or ready-to-use labs.

This is an editorial shortlist of five cloud-provider organisations for the cloud and infrastructure profile. It is not a market-share ranking or an exhaustive infrastructure catalog. Organisations are listed alphabetically. Provider selection should follow the user's existing environment and requirements; selecting a profile must not silently create an account, spend money, or grant privileges.

## Five priority organisations

| Organisation | Representative platform and administration boundary | Source-backed capabilities | Cost and recovery considerations |
| --- | --- | --- | --- |
| Amazon Web Services (Amazon) | AWS accounts and resources governed by IAM | AWS recommends federated human access, temporary credentials, MFA, and least privilege in its [IAM guidance](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html). [AWS Backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html) centralises protection for supported resource types, including EC2/EBS and RDS. | [AWS Budgets](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html) supports cost/usage tracking and alerts; billing information is periodic rather than a real-time guarantee. Check backup feature availability, restore scope, storage/transfer/restore charges, and any configured cost-control actions. |
| Google | Google Cloud resources governed by IAM | [IAM](https://docs.cloud.google.com/iam/docs/overview) grants principals roles on resources; broad basic roles are unsuitable for production use. [Backup and DR](https://docs.cloud.google.com/backup-disaster-recovery/docs/concepts/backup-dr) documents workload-specific protection and restoration approaches. | [Billing budgets](https://docs.cloud.google.com/billing/docs/how-to/budgets) distinguishes alerts-only budgets from preview spend-cap budgets for supported services. Do not assume an alert caps charges or that a preview cap covers every workload. Resolve project/billing scope and supported recovery method. |
| IBM | IBM Cloud account and service resources governed by IAM | [IBM Cloud IAM](https://cloud.ibm.com/docs/iam?topic=iam-iamoverview) supports policies for users, service IDs, and trusted profiles. [Backup for VPC](https://cloud.ibm.com/docs/vpc?topic=vpc-backup-service-about) schedules backup snapshots and supports restoration subject to resource-generation and regional constraints. | [Spending notifications](https://cloud.ibm.com/docs/support?topic=support-spending) provide account/service alerts for supported account types. Backup copies across regions have transfer/storage charges. Check snapshot type, generation, region, encryption key, and restore destination. |
| Microsoft | Azure resources governed by Microsoft Entra identities and Azure RBAC | [Azure RBAC guidance](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices) recommends least privilege and narrow scopes. [Azure Backup](https://learn.microsoft.com/en-us/azure/backup/backup-overview) provides policy-driven recovery points and supported workload restoration. | [Cost Management budgets](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-acm-create-budgets) support cost alerts and optional action-group integration. Resolve subscription/resource-group scope, backup workload support, vault policy, and recovery destination; a notification alone does not establish a spending cap. |
| Oracle | Oracle Cloud Infrastructure (OCI) tenancy and compartment resources governed by IAM | [OCI IAM](https://docs.oracle.com/en-us/iaas/Content/Identity/Concepts/overview.htm) describes policy-based access and compartment scope. [Block Volume backups](https://docs.oracle.com/en-us/iaas/Content/Block/Concepts/blockvolumebackups.htm) support backing up volumes and restoring new volumes. | [OCI budgets](https://docs.oracle.com/en-us/iaas/Content/Billing/Concepts/budgetsoverview.htm) are soft spending limits with alerts. Match region, compartment, volume/backup scope, encryption requirements, and restoration plan; retained backups and restored resources need an explicit cost and cleanup review. |

## Proposed chooser requirements

Ask for provider, task, cloud partition or environment, account/project/subscription/tenancy scope, region, target resources, identity, permitted actions, and recovery objective. Resolve exact CLI/API/provider versions and supported host architecture before preparing clients. These are moving service documents, not proof that a particular CLI, API release, MCP server, or desktop image is supported.

Offer documentation-only research and authorised read-only inventory before a deployment choice. Show clients, integrations, network requirements, permissions, proposed resources, estimated charges, lifetime, and cleanup responsibilities. Infrastructure-as-code plan output is a proposal requiring review; it does not itself authorise a deployment. Tool selection and authoring belongs alongside the [tool creation profile](tool-creation.md).

Use platform-native sign-in or federation and suitable temporary credentials. Workstation or agent login does not confer authority over cloud targets. Separate permission to inspect, change, restore, delete, grant access, and view billing. Never collect keys, tokens, credential-bearing configuration, or customer resource exports in chat or commit them to this repository.

The proposed agentic workflow is: bind the authorised scope and fresh state → inspect → create a sourced plan with cost, permissions, effects, recovery, and cleanup → human review → execute only the approved supported operation → independently verify control-plane state and workload health → retain redacted evidence. A deployment or backup job's successful status is one observation; it does not establish application health or a recoverable business service.

## Proposed first proof per organisation

These are design candidates, not completed tests or runnable labs. Begin with synthetic resource descriptions when no authorised test account exists. Any creation, restoration, IAM change, paid service use, or cleanup deletion needs explicit approval for the particular plan and scope.

| Organisation | Read-only entry task | Disposable proof and independent verification |
| --- | --- | --- |
| AWS | Review scoped IAM access, a resource's backup coverage, and the selected budget's alert behavior. | Restore a synthetic supported resource to a separate test target; check workload data/health, record incurred resources, and reconcile approved cleanup. |
| Google | Review a principal's roles, the chosen protection method, and whether the budget is alerts-only or a supported preview spend cap. | Exercise a supported restore into a separate test target; verify synthetic data and access, then reconcile surviving resources and charges. |
| IBM | Review scoped access policies, VPC backup policy, and spending-notification configuration. | Restore a supported synthetic volume or share to a separate target; verify expected files, generation/region compatibility, and cleanup state. |
| Microsoft | Review scoped Azure roles, supported workload protection, and budget/action configuration. | Restore a synthetic protected workload into a separate test scope; verify data and application health, then reconcile retained recovery points and resources. |
| Oracle | Review compartment-scoped policies, volume backup coverage, and soft budget alerts. | Restore a synthetic volume into a separate test target; verify files, correct compartment/region, and approved cleanup including retained backups. |

## Upstream routing and limits

For Azure, consult the [upstream skill register](../upstream-skill-register.md), [official Azure Skills](https://github.com/microsoft/azure-skills), and [Azure MCP documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/) before creating an overlapping local skill. The existing harness safety wrapper adds review and scope context; this research does not establish a complete Azure execution adapter.

No AWS, Google Cloud, IBM Cloud, or OCI agent integration has been selected or validated here. Provider APIs, MCP authentication, tool effects, regional feature availability, resource quotas, preview status, pricing, and restore consistency need task-specific verification. Private-cloud and on-premises infrastructure remain in scope for later research; this first cloud-provider shortlist does not cover every infrastructure supplier. No account was accessed, cloud resource created, cost incurred, or recovery guarantee tested as part of this document research.

## Sources

All product references below were checked on 2026-10-02. Refresh service capabilities, limits, and prices before an operational plan.

- [AWS: IAM security best practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [AWS: What is AWS Backup?](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)
- [AWS: Managing costs with AWS Budgets](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html)
- [Google Cloud: IAM overview](https://docs.cloud.google.com/iam/docs/overview)
- [Google Cloud: Backup and DR overview](https://docs.cloud.google.com/backup-disaster-recovery/docs/concepts/backup-dr)
- [Google Cloud: Budgets and budget alerts](https://docs.cloud.google.com/billing/docs/how-to/budgets)
- [IBM Cloud: Getting started with IAM](https://cloud.ibm.com/docs/iam?topic=iam-iamoverview)
- [IBM Cloud: Backup for VPC](https://cloud.ibm.com/docs/vpc?topic=vpc-backup-service-about)
- [IBM Cloud: Spending notifications](https://cloud.ibm.com/docs/support?topic=support-spending)
- [Microsoft: Azure RBAC best practices](https://learn.microsoft.com/en-us/azure/role-based-access-control/best-practices)
- [Microsoft: Azure Backup overview](https://learn.microsoft.com/en-us/azure/backup/backup-overview)
- [Microsoft: Create and manage Cost Management budgets](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-acm-create-budgets)
- [Oracle: OCI IAM overview](https://docs.oracle.com/en-us/iaas/Content/Identity/Concepts/overview.htm)
- [Oracle: Block Volume backups](https://docs.oracle.com/en-us/iaas/Content/Block/Concepts/blockvolumebackups.htm)
- [Oracle: OCI budgets](https://docs.oracle.com/en-us/iaas/Content/Billing/Concepts/budgetsoverview.htm)
- [Microsoft: Official Azure Skills](https://github.com/microsoft/azure-skills)
- [Microsoft: Azure MCP documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Admin Harness: Upstream skill register](../upstream-skill-register.md)
