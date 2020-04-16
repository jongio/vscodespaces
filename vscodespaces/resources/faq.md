---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Online Frequently Asked Questions
ms.topic: overview
ms.date: 09/20/2019
---

# FAQ

## General questions

### How does Visual Studio Online relate to Visual Studio Code Remote Development?

Visual Studio Online conceptually and technically extends the [Visual Studio Code Remote Development extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). You can roughly think of VS Online's cloud-hosted environments as "Remote Containers as a Service" and it's self-hosted environments as "Remote SSH as a Service".

If you're the do-it-yourself type of person and like to manage your own machines, we'd love for you to use [Visual Studio Code's Remote Development](https://code.visualstudio.com/docs/remote/remote-overview). If you're looking for a managed solution that lets you focus more on productivity and less on setup, then give Visual Studio Online a try.

### What is running on self-hosted machines to make them accessible?

The Visual Studio Live Share agent runs on self-hosted machines and listens for connections.

## Security questions

### What do you mean by "repositories you trust"?

Visual Studio Online will clone and utilize the user-provided source and/or dotfile repositories to create and configure your cloud-hosted environment. To avoid unknowingly creating and connecting to an environment with malicious extensions or processes, be sure you understand and trust all repositories referenced during environment creation.

### Where can security issues or concerns be reported?

Visual Studio Online is eligible under the Microsoft Azure Bounty Program. For information, visit <https://www.microsoft.com/msrc/bounty-microsoft-azure>.

## Billing questions

### What is an environment unit? 

Environment units bundle compute, network, snapshot and disk costs together. A VS Online environment instance is billed on an hourly basis according to a base set of environment units which depend on the environment instance size.  A standard VS Online environment has a different base rate of environment units than a premium VS Online environment due to the difference of compute, network, snapshot and disk costs together. While environment pricing is listed in units per hour, usage is calculated per-second (including fractional units), so you only pay for exactly what you use. Find out more at our [pricing page](https://aka.ms/vso-pricing).

### What happens when I'm not using an environment? 

Once created, you can connect to a cloud-hosted environment by opening it in the browser or connecting to it from a client like Visual Studio Code. While connected, the environment is "active". If you disconnect, the environment can automatically move into a "suspended" state until you either connect to it again or delete it. The auto-suspend delay is configurable, or you can disable it if you want more control.

### If I create an environment, use it for 6 minutes, 45 seconds, then delete it, how much do I get billed? 

Time is measured in seconds, so you will be billed for 6 minutes and 45 seconds of active time in environment units. 

### Will I be billed for cloud-hosted environments while I'm not using them? 

Yes, once created, an cloud-hosted environment bills at a nominal base rate until you delete it. Find out more at our [pricing page](https://aka.ms/vso-pricing).

### What are self-hosted environments?  

By default, VS Online provisions fully managed environments that run in Azure. These environments are backed by the full power of Azure (always available, quick to create, scalable, etc). However, you may also register your own physical or virtualized environment to your VS Online Plan. This allows you to have some of the benefits of VS Online (e.g. use of the browser-based editor) while leveraging your existing, potentially specialized, infrastructure.

### What is a Visual Studio Online plan?

All VS Online environments are created within the confines of a plan. A plan is a simple grouping mechanism, and is also the level of reporting for billing purposes. For example, if you create three environments within a plan named "Foo", your Azure bill will have one VS Online line item for the plan named "Foo", which would aggregate the costs for all three of its environments. A subscription can have more than one VS Online plan, up to the default quota.

### What are Visual Studio Online's quotas?

VS Online, by default, allows users to create 3 environments per plan, and 2 plans per subscription.

### Where can I report an issue with my billing?

Billing support is available online at [https://aka.ms/vso-billing-issues](https://aka.ms/vso-billing-issues).