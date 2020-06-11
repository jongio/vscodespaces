---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Disaster recovery scenarios
ms.topic: overview
ms.date: 05/10/2020
---

# Disaster Recovery Guidance

At Microsoft, we work hard to make sure that our services are always available to you when you need them. Forces beyond our control sometimes impact us in ways that cause unplanned service disruptions.

This article covers a true disaster recovery scenario, when a whole region experiences an outage due to major natural disaster or widespread service interruption. These are rare occurrences, but you must prepare for the possibility that there is an outage of an entire region. If an entire region experiences a service disruption, the locally redundant copies of your data would temporarily be unavailable.

To help you handle these rare occurrences, we provide the following guidance for Visual Studio Codespaces in the case of a service disruption of the entire region where your Codespace is deployed.

## Option 1: Create a new Codespace in another region

A key benefit of Visual Studio Codespaces is the ability to provision developer environments quickly, with all dependencies pre-configured, which enables developers to be more resilient to the loss of their workstation than they typically would be. Codespaces are not, however, intended to host any production service, and do not provide cross-region failover. Developers are encouraged to "push" their code frequently to remote source control repositories both as part of their regular workflow and to provide a backup in the case of a region-wide outage. In the case of such an event, a new workspace can be quickly provisioned in a new region from the same repository, with all of their changes as of their last "push".

## Option 2: Wait for recovery

In this case, no action on your part is required. Know that we are working diligently to restore service availability. You can see the current service status on our [Visual Studio Services Status Dashboard](https://vsstatus.visualstudio.com/).

Multiple Codespaces in different regions can be linked to the same repository, but in most cases it would be unnecessary to create warm/hot spares manually ahead of time, as environments are designed to be provisioned quickly, and having multiple would provide no extra data resiliency as the limiting factor would still be the most recent "push".

## Additional considerations for self-hosted Codespaces

Self-hosted Codespaces environments, which are not managed by the service, and may be highly customized, require additional planning:

* Because self-hosted environments are accessed through a region-specific plan, they may become inaccessible in the event of a region-wide outage in the plan's region, regardless of the actual location of the environment. In the event of an outage, these environments can be re-registered as new self-hosted environments under a separate plan in a different Azure region.

* Resiliency for the self-hosted environments themselves is outside the scope of this article, and depends on the underlying hosting infrastructure. Some types of resiliency, such as failing a VM over from one physical host to another, or backing up and restoring a physical server, may be transparent to the service itself. In other cases, the environment may need to re-registered.

> [!NOTE]
> For disaster recovery guidance for self-hosted environments also hosted in Azure, such as custom VMs, see [Disaster recovery and high availability for Azure applications](https://docs.microsoft.com/azure/architecture/resiliency/recovery-loss-azure-region).
