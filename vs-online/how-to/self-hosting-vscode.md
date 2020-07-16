---
author: abuchholtzau
ms.author: allisb
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Register a self-hosted Codespaces environment with Visual Studio Code
ms.topic: how-to
ms.date: 04/06/2020
---
# Register a self-hosted Codespaces environment with Visual Studio Code

You can host Codespaces on your own environment using Visual Studio Code. This article describes how to register and connect to a self-hosted Codespaces environment.

If you want to register a machine where interacting with Visual Studio Code UI isn't possible (for example, a server or headless OS), see [Register a headless, self-hosted Codespaces environment](self-hosting-cli.md).

> [!NOTE]
> A Microsoft Account and Azure Subscription are required to use Visual Studio Codespaces. Sign up for a Microsoft Account and Azure Subscription at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

## Install

You'll need to have [Visual Studio Code](https://code.visualstudio.com/) and the [Codespaces extension](https://aka.ms/vso-dl) installed on the machine you wish to register. To install Visual Studio Code, see [Download Visual Studio Code](https://code.visualstudio.com/download).

Install the [Codespaces extension](https://aka.ms/vso-dl) from the [VS Code Marketplace](https://marketplace.visualstudio.com/VSCode) by clicking on the green install button near the top of the page and following the prompts or from within VS Code by searching for "Visual Studio Codespaces" within the **Extensions** view, selecting the extension from the list, and pressing the **Install** button.

When successfully installed, the **Codespaces** panel will be available in the **Remote Explorer** pane. If you have other VS Code Remote Development extensions installed, you may need to select **Codespaces** from the **Remote Explorer** dropdown.

![Screenshot of Visual Studio Codespaces Remote Explorer](../images/install-vsc-03.png)

The panel shown in the previous screenshot provides a management interface for interacting with Codespaces environments, and is covered in full detail in the following sections.

In addition to the panel, Visual Studio Code will also show the remote indicator on the Status bar when the Codespaces extension is installed. The remote indicator signals your connection status, and provides a list of available Codespaces commands when clicked.

![Visual Studio Codespaces remote indicator](../images/install-vsc-04.png)

## Sign In

To sign into Visual Studio Codespaces, you can either press **F1** and select the **Codespaces: Sign In** command in the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), or select **Sign in to view Codespaces...** in **Codespaces** panel of the **Remote Explorer** side bar.

![Sign In to Visual Studio Codespaces](../images/sign-in-vsc-01.png)

Follow the prompts in your browser to complete the sign in.

<!-- TODO: 
Add content for:
- Filtering Azure Subscription
-->

## Create a plan

Once you've signed up and created an Azure subscription, you can access Codespaces by creating a Codespaces Plan. You can create more than one plan, and plans can be used to group related environments together. To sign up, see [Create an Azure free account](https://azure.microsoft.com/free/).

To create a new plan, you can either use the **Codespaces: Create Plan** command in the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), or by clicking the **Select Plan** button on the **Codespaces** title bar in the **Remote Explorer** side bar, then selecting **Create new plan...** from the quick pick list.

![Create Visual Studio Codespaces plan](../images/create-plan-vsc-01.png)

Follow the prompts to select an Azure subscription to associate the plan with, an Azure region to create the plan in, a name for the Azure resource group to create the plan in, and a name for the plan itself.

- **Azure subscription**: You can choose from any Azure subscriptions that was previously selected. To add or remove options from the list, use the **Azure: Select Subscriptions** command in the Command Palette.
- **Azure resource group name**: Your Codespaces plan will be created in a new Azure resource group with the name provided in this step.
- **Azure region**: Choose an [Azure region](https://azure.microsoft.com/global-infrastructure/regions/) to create the Codespaces plan in. All environments created within this plan will be provisioned in the selected region. Supported regions are:
  - East US
  - Southeast Asia
  - West Europe
  - West US 2
- **Codespaces plan name**: The name of the created Codespaces plan. This name is displayed in the **Remote Explorer** for organization purposes.
- **Default instance type**: Choose the default Codespaces Instance Type, such as Standard (Linux).

Once a plan is created, it will be the selected plan in the **Remote Explorer**.

![Selected Visual Studio Codespaces plan](../images/create-plan-vsc-02.png)

Only environments contained within the selected plan will be displayed. To select a different plan, you can either use the **Codespaces: Select Plan** command in the Command Palette, or by clicking the **Select Plan** button on the **Codespaces** title bar.

## Register your environment

Select the **Codespaces: Register Self-hosted Codespace** command in the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) or select **Register self-hosted Codespace...** under the **Self-hosted Codespaces** node in the **Codespaces** panel of the **Remote Explorer** side bar:

- If no folders are currently open in VS Code, you will be prompted to select one. This folder will be opened every time you connect to this codespace from another machine. However, you can open any folder after connecting.

![Select a folder prompt while registering a self-hosted environment in Visual Studio Code](../images/register-local-env-vsc-01.png)

- If no plan is selected, you will be prompted to select or create a plan. No charge is incurred for self-hosted environments.

- You'll be asked to select how the self-hosted agent is run:
  - **Run as a process:** A temporary registration that terminates upon machine shutdown/restart.
  - **Register a service:** Allows the agent to be registered as a system service and persists after environment restarts.
    > [!NOTE]
    > You must run VS Code as an administrator to be able to select this option. You will be prompted to provide an admin username and password to complete registration.

After registering, your self-hosted environment will appear under the **Self-hosted environments** node in the **Codespaces** panel of the **Remote Explorer** side bar.

![Local environment in Visual Studio Code Remote Explorer](../images/register-local-env-vsc-02.png)

## Access your environment

You can now connect from any machine with the Codespaces extension installed or from the [Codespaces management portal](https://online.visualstudio.com/environments) in the browser. The first time you connect may take longer than usual.

If your self-hosted environment becomes unavailable for any reason, see our [troubleshooting](../resources/troubleshooting.md#self-hosted-environments) reference documentation.

## Unregister an environment

You can unregister an self-hosted environment with Codespaces through the [Codespaces management portal](https://online.visualstudio.com/environments). Click the **More** button to bring up the context menu and select **Unregister**.

![Unregister command on the Codespaces management portal](../images/unregister-self-hosted.png)

