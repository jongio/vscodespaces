---
author: jasongin
ms.author: jasongin
ms.service: visual-studio-online
title: Security controls
ms.topic: reference
ms.date: 06/25/2020
---

# Security controls for Visual Studio Codespaces

This article documents the security controls built into Visual Studio Codespaces.

A security control is a quality or feature of an Azure service that contributes to the service's ability to prevent, detect, and respond to security vulnerabilities. For each control, we use "Yes" or "No" to indicate whether it is currently in place for the service, "N/A" for a control that is not applicable to the service.

## Network

| Security&nbsp;control  | Yes/No | Notes | Documentation |
| ---------------------- | ------ | ----- | ------------- |
| VNet injection support | No     | Support for VNet injection is planned. |
| Network isolation and firewalling support | Yes | Every codespace is isolated in its own VNet. Codespaces are firewalled so that they cannot receive incoming traffic from other codespaces or from the internet. The only way to connect to a codespace is via a secure tunnel provided by the Codespaces service. |

## Monitoring & logging
| Security&nbsp;control              | Yes/No | Notes | Documentation |
| ---------------------------------- | ------ | ----- | ------------- |
| Management plane logging and audit | Yes    | All management operations performed on **Codespaces Plan** objects occur via Azure Resource Manager. Historical logs of these operations are available both in the portal and via the CLI. | [Azure resource activity logs](https://docs.microsoft.com/azure/azure-resource-manager/management/view-activity-logs)
| Data plane logging and audit       | No     | Data plane logging is currently internal-only. Support for getting data plane logs through Azure Monitor is planned. |

## Identity
| Security&nbsp;control | Yes/No | Notes | Documentation |
| --------------------- | ------ | ----- | ------------- |
| Authentication        | Yes    | Clients authenticate with Azure Resource Manager (ARM) via Azure Active Directory (AAD) for management operations, and call ARM actions to request an access token for data-plane operations. | [AAD authentication flows](https://docs.microsoft.com/azure/active-directory/develop/authentication-flows-app-scenarios)
| Authorization         | Yes    | Azure Role-based Access Control (RBAC) on the **Codespaces Plan** resource controls who can access codespaces in the plan. | [Azure RBAC](https://docs.microsoft.com/azure/role-based-access-control/)
| Delegated access      | Yes    | Integrators can delegate limited access to a plan or codespace to another user so that they do not need to directly authenticate with AAD/ARM. This can be used to integrate with external identity providers. |

## Data protection
| Security&nbsp;control                                  | Yes/No | Notes | Documentation |
| ------------------------------------------------------ | ------ | ----- | ------------- |
| Server-side encryption at rest: Microsoft-managed keys | Yes    |       | [Azure Storage encryption for data at rest](https://docs.microsoft.com/azure/storage/common/storage-service-encryption)
| Server-side encryption at rest: Customer-managed keys  | No     | Support for customer-managed keys is planned. |
| Encryption in transit                                  | Yes    | Codespaces service APIs require HTTPS for inbound traffic. Connections between client and codespace use SSH protocol for E2E encryption. |
| API calls encrypted                                    | Yes    | Calls from the Codespaces service to Azure Resource Manager and other Azure services use HTTPS. |
