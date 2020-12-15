---
author: nikmd23
ms.author: nimolnar
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Visual Studio Codespaces Frequently Asked Questions
description: Visual Studio Codespaces general, security, and billing frequently asked questions.
ms.topic: troubleshooting
ms.date: 05/29/2020
---

# FAQ

> [!IMPORTANT] 
> Visual Studio Codespaces is being consolidated into [GitHub Codespaces](https://github.com/features/codespaces). New user signups and codespace creation suspended on December 16th, 2020. The service will be retired and all data deleted on February 17th, 2021. See our [FAQs](https://docs.microsoft.com/visualstudio/codespaces/resources/consolidation-faq#im-a-current-visual-studio-codespaces-user-how-do-i-move-to-the-github-beta) for guidance on your transition to GitHub Codespaces.

## General questions

### What is Visual Studio Codespaces?

Visual Studio Codespaces provides managed, on-demand development environments that can be used for long-term development projects or short-term tasks like pull requests.

### How does Visual Studio Codespaces relate to Visual Studio Code Remote Development?

Visual Studio Codespaces conceptually and technically extends the [Visual Studio Code Remote Development extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). You can think of Codespaces's cloud-hosted environments as "Remote Containers as a Service" and it's self-hosted environments as "Remote SSH as a Service".

Visual Studio Codespaces optimizes for productivity by streamlining setup with default configurations. If you're interested in managing your own machines and configuration, see [Visual Studio Code's Remote Development](https://code.visualstudio.com/docs/remote/remote-overview).

### What is running on self-hosted machines to make them accessible?

The Visual Studio Live Share agent runs on self-hosted machines and listens for connections.

### Can any Visual Studio client access any Codespace?

We are actively expanding support for more features and workloads across the Visual Studio clients. Not all clients have been upgraded to support all Codespaces. Here is a summary of the Visual Studio clients and the Codespaces they can support.

| Client                | Codespace (Windows) | Codespace (Linux) |
|-----------------------|:-------------------:|:-----------------:|
| Visual Studio Code    |         ✔          |        ✔         |
| Browser based editor  |         ✔          |        ✔         |
| Visual Studio 2019    |         ❌         |        ❌        |
| Visual Studio for Mac |         ❌         |        ❌        |

## Security questions

### What do you mean by "repositories you trust"?

Visual Studio Codespaces will clone and utilize the user-provided source and/or dotfile repositories to create and configure your cloud-hosted environment. To avoid unknowingly creating and connecting to an environment with malicious extensions or processes, be sure you understand and trust all repositories referenced during environment creation.

### Where can security issues or concerns be reported?

Visual Studio Codespaces is eligible under the Microsoft Azure Bounty Program. For information, visit <https://www.microsoft.com/msrc/bounty-microsoft-azure>.

### How do I consent to Codespace's Azure AD application if I receive the "needs admin approval" message?

If you've received a "needs admin approval" message while trying to use Visual Studio Codespaces, you'll need to consent to the Codespace's Azure AD application. Have your subscription administrator complete the form at the following two URLs, replacing `{tennant_id}` with [your Azure tennant ID](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
  - https://login.microsoftonline.com/{tennant_id}/adminconsent?client_id=a3037261-2c94-4a2e-b53f-090f6cdd712a&redirect_uri=https://online.visualstudio.com
  - https://login.microsoftonline.com/{tennant_id}/adminconsent?client_id=9db1d849-f699-4cfb-8160-64bed3335c72&redirect_uri=https://online.visualstudio.com

## Billing questions

### What is an environment unit? 

Environment units bundle compute, network, snapshot and disk costs together. A Codespaces environment instance is billed on an hourly basis according to a base set of environment units which depend on the environment instance size.  A standard Codespaces environment has a different base rate of environment units than a premium Codespaces environment due to the difference of compute, network, snapshot and disk costs together. While environment pricing is listed in units per hour, usage is calculated per-second (including fractional units), so you only pay for exactly what you use. Find out more at our [pricing page](https://aka.ms/vso-pricing).

### What happens when I'm not using an environment? 

Once created, you can connect to a cloud-hosted environment by opening it in the browser or connecting to it from a client like Visual Studio Code. While connected, the environment is "active". If you disconnect, the environment can automatically move into a "suspended" state until you either connect to it again or delete it. The auto-suspend delay is configurable, or you can disable it if you want more control.

### If I create an environment, use it for 6 minutes, 45 seconds, then delete it, how much do I get billed? 

Time is measured in seconds, so you will be billed for 6 minutes and 45 seconds of active time in environment units. 

### Will I be billed for cloud-hosted environments while I'm not using them? 

Yes, once created, an cloud-hosted environment bills at a nominal base rate until you delete it. Find out more at our [pricing page](https://aka.ms/vso-pricing).

### What are self-hosted environments?  

By default, Codespaces provisions fully managed environments that run in Azure. These environments are backed by the full power of Azure (always available, quick to create, scalable, etc). However, you may also register your own physical or virtualized environment to your Codespaces Plan. This allows you to have some of the benefits of Codespaces (e.g. use of the browser-based editor) while leveraging your existing, potentially specialized, infrastructure.

### What is a Visual Studio Codespaces plan?

All Codespaces environments are created within the confines of a plan. A plan is a simple grouping mechanism, and is also the level of reporting for billing purposes. For example, if you create three environments within a plan named "Foo", your Azure bill will have one Codespaces line item for the plan named "Foo", which would aggregate the costs for all three of its environments. A subscription can have more than one Codespaces plan, up to the default quota.

### What are Visual Studio Codespaces's quotas?

Codespaces, by default, allows users to create 3 environments per plan, and 2 plans per subscription.

### Where can I report an issue with my billing?

Billing support is available online at [https://aka.ms/vso-billing-issues](https://aka.ms/vso-billing-issues).
