---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: How to use Visual Studio Online with VS Code
ms.topic: overview
ms.date: 09/20/2019
---

# Visual Studio Online VS Code How-to

## Sign Up

A Microsoft Account and Azure Subscription are required to use Visual Studio Online.

You can sign up for both, as well as receive various Azure incentives at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

<!-- 
- Create Azure Identity
- Create Azure Subscription
-->

## Install

> [!TIP]
> If you don't have [Visual Studio Code](https://code.visualstudio.com/) installed already, you can download it [here](https://code.visualstudio.com/download).

If you'd like to use Visual Studio Online from within Visual Studio Code, you'll have to install the Visual Studio Online extension. There's two ways to do that:

### Install from Visual Studio Code Marketplace

You can install the [Visual Studio Online extension](https://aka.ms/vso-dl) from the [Visual Studio Code Marketplace](https://marketplace.visualstudio.com/VSCode) by clicking on the green install button near the top of the page and following the prompts.

<!-- TODO: SCREENSHOT NEEDED -->

### Install from within Visual Studio Code

Alternatively, from within Visual Studio Code search for '*Visual Studio Online*' within the **Extensions** panel, select the extension from the list, and press the **Install** button.

<!-- TODO: SCREENSHOT NEEDED -->

### Post installation

When successfully installed, the Visual Studio Online panel will be available in the **Remote Explorer** pane.

<!-- TODO: SCREENSHOT NEEDED -->

This panel provides a management interface for interacting with Visual Studio Online environments, and is covered in full detail in the remainder of this document.

In addition to the panel, Visual Studio Code will also show the remote indicator when the Visual Studio Online extension is installed. The remote indicator signals your connection status, and provides a list of available Visual Studio Online commands when clicked.

<!-- TODO: SCREENSHOT NEEDED -->

## Sign In

To sign into Visual Studio Online, you can either use the *VS Online: Sign In* command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), or by choosing *Sign in to view environments...* in the **Remote Explorer** side bar, under the VS Online panel.

<!-- TODO: "Create new environment shouldn't be in this screenshot -->
![Sign In to Visual Studio Online](../images/sign-in-vsc-01.png)

From there, press the *Sign In* button on the notification toast that appears, and follow the prompts in your browser.

![Sign In to Visual Studio Online](../images/sign-in-vsc-02.png)

<!-- TODO: 
Add content for:
- Filtering Azure Subscription
-->

## Create a Plan

- Create a VSO Plan
  - Subscription
  - Resource Group
  - Region
- Swapping Plan

## Create an environment

- Name
- Git Repo Path
  - GitHub style (org/repo)
  - http(s)://...git style
  - GitHub URLs
    - Branch
    - Tag
    - Commit
    - PR
  - SSH URLs not supported
- SKU
- From Command Pallet
- From Remote Explorer
- Create Unmanaged Environment

## Connect to an environment

- From Command Pallet
- From Remote Explorer
- From environment details
- In New Window
- In Browser
- Environment details panel
- Install extension

## Disconnect from an environment

- From Command Pallet
- From Remote Explorer

## Pause an environment

- From Command Pallet
- From Remote Explorer
- Implications of Pausing

## Delete an environment

- From Command Pallet
- From Remote Explorer

## Using the Terminal

- Not local, concept
- Dotfiles integration

## Port Forwarding

- From Command Pallet
- From Remote Explorer
- Auto forward from terminal output
- Disable forwaring a port
- Get Port URL

## Configuration and Settings

- Extension Config
  - Dotfiles
- devContainer.json
  - placement
  - link to reference doc
- Dockerfile
  - placement
  - link to reference doc
