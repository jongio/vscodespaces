---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Codespaces with Visual Studio 2019 Quickstart
ms.topic: overview
ms.date: 09/20/2019
---

# Visual Studio Codespaces in Visual Studio 2019 Quickstart

Visual Studio's support for Visual Studio Codespaces is available through a Limited Preview. [sign up(https://aka.ms/vsfutures-signup) for hte Limited Preview] to try using Visual Studio Codespaces in Visual Studio 2019.

# Visual Studio Online VS Code Quickstart

Welcome to Visual Studio Online! We're glad you're here.

Visual Studio Online provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio Code, Visual Studio ([sign up for the Private Preview](https://aka.ms/vsfutures-signup)), or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Online at no cost.

Additionally, Visual Studio Online brings many of the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads, to development environments. However, Visual Studio Online is also personaliazable to allow developers to leverage the tools, processes and configurations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will walk you through how to install VS Online, create a cloud-hosted environment, connect to it, run and debug the environment's application, disconnect and delete the environment.

> [!IMPORTANT]
> A Microsoft Account and Azure Subscription are required for this quickstart. You can sign up for both, as well as receive various Azure incentives at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

## 1. Install

> [!TIP]
> If you don't have [Visual Studio Code](https://code.visualstudio.com/) installed already, you can download it [here](https://code.visualstudio.com/download).

Install the [VS Online extension](https://aka.ms/vso-dl) for Visual Studio Code by clicking on the green install button near the top of the page and following the prompts.

Once installed, you can sign in.

## 2. Sign In

To sign into VS Online, you press `F1` and select the **VS Online: Sign In** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette). Follow the prompts in your browser to complete the sign in.

## 3. Create an Environment

To create a new cloud-hosted environment in VS Online select the **Create New Environment** button on the **VS Online** title bar in the **Remote Explorer** side bar.

![Create environment in Visual Studio Code](../images/create-env-vsc-01.png)

Answer the prompts with the following information:

- **Name**: My Quick Environment
- **Git Repository**: microsoft/vsonline-quickstart
- **Auto-suspend Setting**: 30 minutes
- **Azure Subscription**: Select any Azure subscription to create a VS Online plan in
- **Instance Type**: Standard Environment (Linux)

A **Creating environment: My Quick Environment** notification will appear in the bottom right corner. When that notification is replaced with on that says **Environment created: My Quick Environment**, press the **Connect** button.

You can refer to our [repository reference](../reference/repository.md) on the supported url types and providers.

## 4. Connect To and Use the Environment

After pressing the **Connect** button, VS Code will connect to the cloud-hosted environment we just created. The name **My Quick Environment** will appear in the **Remote Indicator** in the bottom left corner when you are fully connect.

At this point, open **Readme.md** from **File Explorer**, and then press [`ctrl`]+[`shift`]+[`V`] to render the markdown file.

Follow the instructions in **Readme.md**, and return to this document when complete.

## 5. Deleting the Environment

To delete the newly created environment, right click on **My Quick Environment** in the **VS Online** panel of the **Remote Explorer** and select **Delete** from the context menu.

## Next Steps

That's it! You've quickly spun up an environment, used the integrated terminal, edited code, debugged and ran it, then disconnected and deleted the environment.

If you'd like to learn more details, check out the [VS Online Overview](../overview/what-is-vsonline.md) or [VS Online for VS Code how-to](../how-to/vscode.md) documentation.
