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

If you'd like to use VS Online from within Visual Studio Code, you'll have to install the VS Online extension. There's two ways to do that:

### Install from Visual Studio Code Marketplace

You can install the [VS Online extension](https://aka.ms/vso-dl) from the [VS Code Marketplace](https://marketplace.visualstudio.com/VSCode) by clicking on the green install button near the top of the page and following the prompts.

<!-- TODO: SCREENSHOT NEEDED -->

### Install from within Visual Studio Code

Alternatively, from within VS Code search for '*Visual Studio Online*' within the **Extensions** side bar, select the extension from the list, and press the **Install** button.

<!-- TODO: SCREENSHOT NEEDED -->

### Post installation

When successfully installed, the **VS Online** panel will be available in the **Remote Explorer** pane.

<!-- TODO: SCREENSHOT NEEDED -->

This panel provides a management interface for interacting with VS Online environments, and is covered in full detail in the remainder of this document.

In addition to the panel, VS Code will also show the remote indicator when the VS Online extension is installed. The remote indicator signals your connection status, and provides a list of available VS Online commands when clicked.

<!-- TODO: SCREENSHOT NEEDED -->

## Sign In

To sign into VS Online, you can either use the **VS Online: Sign In** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), or by choosing **Sign in to view environments...** in **VS Online** panel of the **Remote Explorer** side bar.

![Sign In to Visual Studio Online](../images/sign-in-vsc-01.png)

From there, press the **Sign In** button on the notification toast that appears, and follow the prompts in your browser.

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

### Cloud-hosted

To create a new cloud-hosted environment in VS Online, you can either use the **VS Online: Create New Environment** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), or by selecting the **Create New Environment** button on the **VS Online** title bar in the **Remote Explorer** side bar.

<!-- TODO: "Create new environment" should be in this screenshot -->
![Create environment in Visual Studio Code](../images/create-env-vsc-01.png)

Follow the prompts to provide an environment name, path to Git repository (optional) and auto-suspend settings.

![Create environment in Visual Studio Code](../images/create-env-vsc-02.gif)

- **Name**: You can name your environment anything you'd like, but we recommend naming it after the project or task that you'll be using it for. (e.g. 'Todo App Environment', 'PR Review', 'Shopping Cart Feature')
- **Git Repository**: If a path to a Git repository is provided, VS Online will automatically clone that repository into the environment. You can specify a Git repository in one of many formats:
  - **Absolute Http(s) Git URL**: A complete Http or Https Url. It may end in a `.git` extension. Examples include:
    - https://github.com/organization/repo.git
    - https://organization@dev.azure.com/organization/repo/_git/repo
    - https://username@bitbucket.org/organization/repo.git
  - **GitHub Project URL**: The Https Url used to navigate to the homepage of a project on GitHub. (e.g. https://github.com/organization/repo)
  - **GitHub Short Form**: The forward slash delimited `organization/repo` format used to refer to projects on GitHub.
  - **GitHub Pull Request URL**: The Https Url used to navigate to a pull request in GitHub. (e.g. https://github.com/organization/repo/pull/123)
- **Auto-suspend Setting**: The length of disconnected time before a VS Online environment will be automatically suspended. Choose between:
  - 5 minutes
  - 30 minutes
  - 2 hours
  - Never auto-suspend the environment. (Manual suspension still available)

> [!TIP]
> The guided environment creation experience described above supports Git repositories over the HTTP(S) scheme. To use another source control provider, or Git over SSH, simply leave the **Git Repository** setting blank, and use the environment's terminal support to clone your source code.

<!-- TODO: Add information about instance type/SKU -->

### Self-hosted

In addition to cloud-hosted environments, you can also "bring your own" self-hosted environments, registering them with VS Online. To do so, first (install VS Code and the VS Online extension)[#install] on the environment you'd like to register. Then use the **VS Online: Register Local Environment** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).

## Connect to an environment

VS Code makes connecting to environments quick and easy. If you were already connected to an environment when you last shut down VS Code, it will automatically try to re-connect to that environment when you launch it.

If you're [creating an environment](#create-an-environment), a notification toast will appear as soon as the environment is ready. Simply select the **Connect** button to connect to the new environment.

![Connect to a new environment in Visual Studio Code](../images/connect-env-vsc-01.png)

No matter what, when you're in the process of connecting, VS Code's **Remote Indicator** will animate during the connection process, and will display the name of the environment once the connection has completed.

![Connect to a new environment in Visual Studio Code](../images/connect-env-vsc-02.gif)

To connect to already existing environment, that you're not currently connected to, there's several options:

1. Use the **VS Online: Connect to Environment** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) to be displayed with a quick pick list of environments to connect to.
2. Alternatively, the quick pick list is displayed by left-clicking the name of any environment in the **VS Online** panel in the **Remote Explorer** side bar.
3. For more advanced options, right-click the name of the environment in the **VS Online** panel to reveal a context menu with the following options:
   - **Connect to Environment**: Click to immediately connect to the selected environment.
   - **Open Environment in New Window**: Click to launch a new VS Code instance that will connect to the selected environment. This is useful for being connected to multiple environments at once.
   - **Open in Browser**: Click to launch the environment in VS Online's browser-based editor.


Lastly, you can inspect details about the currently environment in the **Environment Details** panel in the **Remote Explorer** side bar.

<!-- TODO: Fix "connected" icon next to "My Environment" -->
![Environment Details in Visual Studio Code](../images/connect-env-vsc-03.png)

## Disconnect from an environment

Once connected to an environment, there's three ways to disconnect:

1. Use the **VS Online: Disconnect** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).
2. Right-click the name of the connected environment in the **VS Online** panel to reveal a context menu with a **Disconnect** option.
3. Selecting the **Disconnect** button on the **Environment Details** title bar in the **Remote Explorer** side bar.

<!-- TODO: Fix "connected" icon next to "My Environment" -->
![Disconnect in Visual Studio Code](../images/disconnect-env-vsc-01.png)

## Suspend an environment

- From Command Pallet
- From Remote Explorer
- Implications of Pausing

## Delete an environment

The actively connected environment cannot be deleted, however while [disconnected from an environment](#disconnect-from-an-environment) there's two ways to permanently delete it:

1. Use the **VS Online: Delete Environment** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) to select the environment to be deleted then press the **Delete** button on the confirmation prompt.
2. Right-click the name of the disconnected environment in the **VS Online** panel to reveal a context menu with a **Delete** option. Select it and press the **Delete** button on the confirmation prompt.

## Using the integrated terminal

VS Code's integrated terminal and all of its features are fully supported in VS Online. It is important to note, however, that while connected to VS Online commands issued in the terminal are executed against the environment, not the user's local machine. This provides VS Online users full control over their development environment and how it's configured.

> [!TIP]
> The [integrated terminal is fully documented on the VS Code site](https://code.visualstudio.com/docs/editor/integrated-terminal).

VS Online exposes information about the configuration and creation of an environment in the **VS Online** terminal. This terminal is read-only, and is meant to be used for troubleshooting purposes.

![VS Online Terminal in Visual Studio Code](../images/terminal-vsc-01.png)

Attempts to type in the **VS Online** terminal window will issue a warning notification toast. Press the **Open in New Terminal** button in the toast, or the **New Terminal** icon in the **Terminal** panel to create a new, writable terminal instance.

![VS Online Terminal Warning in Visual Studio Code](../images/terminal-vsc-02.png)

In addition to the standard integrated terminal features of VS Code, VS Online also allows for the terminal to be personalized using custom dotfiles. See [Personalizing environments](../reference/personalizing.md) for more information.

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
