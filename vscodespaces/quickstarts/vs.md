---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Codespaces with Visual Studio 2019 Quickstart
ms.topic: overview
ms.date: 09/20/2019
---

# Visual Studio Codespaces in Visual Studio 2019 Quickstart

Welcome to Visual Studio Codespaces! We're glad you're here. 

Visual Studio Codespaces provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these Codespaces from Visual Studio Code, Visual Studio ([sign up for the Limited Preview](https://aka.ms/vsfutures-signup)), or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted Codespaces to Visual Studio Codespaces at no cost.

Additionally, Visual Studio Codespaces brings many of the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads, to development environments. However, Visual Studio Codespaces is also personaliazable to allow developers to leverage the tools, processes and configurations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will walk you through how to install Visual Studio Codespaces, create a cloud-hosted Codespace, connect to it, run and debug the Codespace's application, disconnect and delete the Codespace.

> [!IMPORTANT]
> You must sign up for the Limited Preview and have an Azure Subscription to try this quickstart. If you don't already have an Azure Subscription first create one at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/). Then [sign up for the Limited Preview](https://aka.ms/vsfutures-signup).

## 1. Install

> [!TIP]
> If you don't have [Visual Studio 2019 Preview](http://aka.ms/vspreview) installed already, you can download it [here](http://aka.ms/vspreview). Check the **ASP.NET and web development**, **Desktop development with C++**, or both Workloads in the Installer. Then click **Install**.

Llaunch Visual Studio 2019 from the Start menu. If you just installed Visual Studio for the first time you'll see a welcome screen where you can sign in with any Microsoft identity.

When you reach Visual Studio's Start Window click **Continue without code**. Now open the **Tools** menu and click **Options...**. Search for **Preview features**. Check the **Connect to Visual Studio Codespaces(private preview only)** checkbox, then click **Ok** and restart Visual Studio.

## 2. Create a Codespace

To sign into Visual Studio Codespaces, you press `F1` and select the **Visual Studio Codespaces: Sign In** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette). Follow the prompts in your browser to complete the sign in.


To create a new cloud-hosted Codespace in Visual Studio Codespaces select the **Create New Codespace** button on the **Visual Studio Codespaces** title bar in the **Remote Explorer** side bar.

![Create Codespace in Visual Studio Code](../images/create-env-vsc-01.png)

Answer the prompts with the following information:

- **Name**: My Quick Codespace
- **Git Repository**: microsoft/vsonline-quickstart
- **Auto-suspend Setting**: 30 minutes
- **Azure Subscription**: Select any Azure subscription to create a Visual Studio Codespaces plan in
- **Instance Type**: Standard Codespace (Linux)

A **Creating Codespace: My Quick Codespace** notification will appear in the bottom right corner. When that notification is replaced with on that says **Codespace created: My Quick Codespace**, press the **Connect** button.

You can refer to our [repository reference](../reference/repository.md) on the supported url types and providers.

## 3. Connect To and Use the Codespace

After pressing the **Connect** button, Visual Studio Code will connect to the cloud-hosted Codespace we just created. The name **My Quick Codespace** will appear in the **Remote Indicator** in the bottom left corner when you are fully connect.

At this point, open **Readme.md** from **File Explorer**, and then press [`ctrl`]+[`shift`]+[`V`] to render the markdown file.

Follow the instructions in **Readme.md**, and return to this document when complete.

## 4. Deleting the Codespace

To delete the newly created Codespace, right click on **My Quick Codespace** in the **Visual Studio Codespaces** panel of the **Remote Explorer** and select **Delete** from the context menu.

## Next Steps

That's it! You've quickly spun up a Codespace, used the integrated terminal, edited code, debugged and ran it, then disconnected and deleted the Codespace.

If you'd like to learn more details, check out the [Visual Studio Codespaces Overview](../overview/what-is-vsonline.md) or [Visual Studio Codespaces for Visual Studio Code how-to](../how-to/vscode.md) documentation.
