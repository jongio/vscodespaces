---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Codespaces with VS Code Quickstart
ms.topic: overview
ms.date: 05/13/2020
---

# Visual Studio Codespaces VS Code Quickstart

Visual Studio Codespaces provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio Code, Visual Studio 2019 ([sign up for the Private Preview](https://aka.ms/vsfutures-signup)), or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Codespaces at no cost.

Additionally, Visual Studio Codespaces brings many of the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads, to development environments. However, Visual Studio Codespaces is also personaliazable to allow developers to leverage the tools, processes and configurations that they have come to love and rely on - truly the best of both worlds!

This document will walk you through how to install Codespaces, create a cloud-hosted environment, connect to it, run and debug the environment's application, disconnect and delete the environment.

> [!IMPORTANT]
> You must sign up for the Private Preview and have an Azure Subscription to try this quickstart. If you don't already have an Azure Subscription, create one at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

## 1. Install

> [!TIP]
> If you don't have [Visual Studio Code](https://code.visualstudio.com/) installed already, you can download it [here](https://code.visualstudio.com/download).

Install the [Codespaces extension](https://aka.ms/vso-dl) for Visual Studio Code by clicking on the green install button near the top of the page and following the prompts.

Once installed, you can sign in.

## 2. Sign in

To sign into Codespaces, you press `F1` and select the **Codespaces: Sign In** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette). Follow the prompts in your browser to complete the sign in.

## 3. Create an environment

To create a new cloud-hosted environment in Codespaces select the **Create New Environment** button on the **Codespaces** title bar in the **Remote Explorer** side bar.

![Create environment in Visual Studio Code](../images/create-env-vsc-01.png)

Answer the prompts with the following information:

- **Name**: My Quick Environment
- **Git Repository**: microsoft/vsonline-quickstart
- **Auto-suspend Setting**: 30 minutes
- **Azure Subscription**: Select any Azure subscription to create a Codespaces plan in
- **Instance Type**: Standard Environment (Linux)

> [!TIP]
> [Sign up for the Private Preview](https://aka.ms/vsfutures-signup) to create Windows based Codespaces.

A **Creating environment: My Quick Environment** notification will appear in the bottom right corner. When that notification is replaced with on that says **Environment created: My Quick Environment**, press the **Connect** button.

You can refer to our [repository reference](../reference/repository.md) on the supported url types and providers.

## 4. Connect and use the environment

After pressing the **Connect** button, VS Code will connect to the cloud-hosted environment we just created. The name **My Quick Environment** will appear in the **Remote Indicator** in the bottom left corner when you are fully connect.

At this point, open **Readme.md** from **File Explorer**, and then press [`ctrl`]+[`shift`]+[`V`] to render the markdown file.

Follow the instructions in **Readme.md**, and return to this document when complete.

## 5. Delete the environment

To delete the newly created environment, right click on **My Quick Environment** in the **Codespaces** panel of the **Remote Explorer** and select **Delete** from the context menu.

## Next Steps

This article covered a typical end-to-end use of Codespaces. For more information, see:

- [What is Codespaces?](../overview/what-is-vsonline.md)
- [Codespaces with Visual Studio 2019 quickstart](../quickstarts/vs.md)
- [Codespaces with the browser quickstart](../quickstarts/browser.md)