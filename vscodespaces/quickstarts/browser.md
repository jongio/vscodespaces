---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Codespaces with a browser Quickstart
ms.topic: overview
ms.date: 09/20/2019
---

# Visual Studio Codespaces Quickstart

Visual Studio Codespaces provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio Code, Visual Studio 2019 ([sign up for the Private Preview](https://aka.ms/vsfutures-signup)), or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Codespaces at no cost.

Additionally, Visual Studio Codespaces brings many of the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads, to development environments. However, Visual Studio Codespaces is also personaliazable to allow developers to leverage the tools, processes and configurations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will walk you through how to install Codespaces, create a cloud-hosted environment, connect to it, run and debug the environment's application, disconnect and delete the environment.

> [!IMPORTANT]
> A Microsoft Account and Azure Subscription are required for this quickstart. You can sign up for both, as well as receive various Azure incentives at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

## 1. Sign In

To sign into Codespaces, browse to the [login page](https://online.visualstudio.com/login) and click the **Sign in** button.

![Sign In to Visual Studio Codespaces](../images/sign-in-vso-01.png)

Follow the prompts in the pop-up dialog to complete sign in.

## 2. Create a plan

A Codespaces plan is required to create Codespaces environments. To create a new plan and either use the blue **Create new plan** button, or by click the **Create new plan** in the **Plan Selector** menu in the header bar.

![Create Visual Studio Codespaces plan](../images/create-plan-vso-01.png)

Fill in the form with the following information:

- **Subscription**: Choose any existing Azure subscription you'd like.
- **Resource Group**: Choose any existing Azure resource group you'd like.
- **Region**: Choose the supported regions geographically closest to you. Supported regions are:
  - East US
  - Southeast Asia
  - West Europe
  - West US 2
- **Plan Name**: My-VSO-Plan

Once a plan is created, it will be the selected plan in the **Plan Selector**. 

> [!TIP]
> More information about plans and pricing is available on [the Codespaces pricing page](https://aka.ms/vso-pricing).

## 3. Create an Environment

To create a new cloud-hosted environment in Codespaces select the **Create environment** button in the Codespaces management portal.

![Create environment in Visual Studio Code](../images/create-env-vso-01.png)

Complete the form with the following values:

- **Environment Name**: My Quick Environment
- **Git Repository**: microsoft/vsonline-quickstart
- **Put environment to sleep after...**: 30 minutes
- **Instance Type**: Standard Environment (Linux)

> [!TIP]
> [Sign up for the Private Preview](http://aka.ms/vsfutures-signup) to create Windows based Codespaces.

![Create environment in Visual Studio Code](../images/create-quickstart-vso-02.png)

A card with the name **My Quick Environment** will appear in the management portal with a status badge of **Creating**.

## 4. Connect To and Use the Environment

Once the green **Available** status badge appears on the environment card, click **My Quick Environment** to connect.

Once connected, open **Readme.md** from **File Explorer**, and then press [`ctrl`]+[`shift`]+[`V`] to render the markdown file.

Follow the instructions in **Readme.md**, and return to this document when complete.

## 5. Deleting the Environment
To delete the newly created environment, click the context menu on the **My Quick Environment** card and select **Delete**.

![Delete in Visual Studio Codespaces](../images/delete-env-vso-01.png)

## Next Steps

That's it! You've quickly spun up an environment, used the integrated terminal, edited code, debugged and ran it, then disconnected and deleted the environment.

<<<<<<< HEAD
If you'd like to learn more details, check out the [VS Online Overview](../overview/what-is-vsonline.md) or [VS Online for VS Code how-to](../how-to/vscode.md) documentation.
=======
If you'd like to learn more details, check out the [Codespaces Overview](../overview/what-is-vsonline.md) or [Codespaces for VS Code how-to](../how-to/vscode.md) documentation.


>>>>>>> 7e7cce60eff7381a8ea68a8445d6a9b161616959
