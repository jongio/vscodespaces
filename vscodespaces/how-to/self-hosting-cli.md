---
author: 2percentsilk
ms.author: allisb
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Register a headless, self-hosted Codespace
description: Register a self-hosted environment with the Visual Studio Codespaces command line interface (CLI).
ms.topic: how-to
ms.date: 04/06/2020
---

# Register a headless, self-hosted Codespace

> [!IMPORTANT] 
> Visual Studio Codespaces is being consolidated into [GitHub Codespaces](https://github.com/features/codespaces). Support for self-hosted codespaces in the Visual Studio service has ended and is not currently included in the GitHub service. You can join the conversation by visiting the GitHub Community issue regarding [self-hosted support](https://github.community/t/self-hosted-codespaces/131361).

You can host a Codespace on your own hardware using the headless CLI. This article describes how to register and connect to a headless Codespaces server.

> [!NOTE]
> A Microsoft Account and Azure Subscription are required to use Visual Studio Codespaces. Sign up for a Microsoft Account and Azure Subscription at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

## Install Codespaces for self-hosting

Codespaces CLI tools can be used on [Windows](~/reference/vsonline-cli.md#windows), [macOS](~/reference/vsonline-cli.md#macos), and [Linux](~/reference/vsonline-cli.md#linux) environments. For installation instructions, see [Codespaces CLI Reference](~/reference/vsonline-cli.md#installation).

## Register your machine

You must create a Codespaces plan before starting the registration process. For more information on creating a plan, see [create a plan](browser.md#create-a-plan) in our browser how-to guide.

Once you've successfully installed the CLI, start the interactive registration process by running the [`codespaces start`](~/reference/vsonline-cli.md#start-codespaces) command.

> [!NOTE]
> Be sure you're running the process as the user you'd like to use when accessing the Codespace from other machines after registration.

### Register as a service

> [!NOTE]
> You must have administrator permissions to be able to select this option. For macOS and Linux, we do not recommend running with sudo.

As part of registration, you will be asked to sign-in with your Codespaces account and provide the existing plan this Codespace should be registered to.

#### Windows

Register the self-hosted agent as a service by running the following command from a terminal/command line that is running as an admin user.

```bash
codespaces start --service
```

You will be prompted for your Windows login password.

#### macOS

Register the self-hosted agent as a service by running:

```bash
codespaces start --service
```

You may be prompted for a sudoers password (unless another sudo command has recently been successfully authenticated/authorized).

#### Linux

>[!NOTE]
> `systemd` must be installed to run as a service for Linux.

Register the self-hosted agent as a service by running:

```bash
codespaces start --service
```

You will be prompted to confirm if you want to run `loginctl enable-linger` to keep the agent running even when logged off.

### Run as a process

> [!NOTE]
> When running as a temporary process, the agent will stop as soon as the process exits. This will make the Codespace switch to an Unavailable status,  and you will not be able to connect to the Codespace until the agent process is restarted. If you'd like the agent to be installed long-term, consider running as a service instead.

Once you've successfully installed the CLI, run the self-hosted agent as a temporary process by running:

```bash
codespaces start
```

As part of registration, you will be asked to sign-in with your Codespaces account and provide the existing plan this environment should be registered to.

## Access your Codespace

You can now connect to your self-hosted Codespace from any machine with the Codespaces extension installed, or from the [Codespaces portal](https://online.visualstudio.com/environments) in the browser. The first time you connect may take longer than usual.

If your self-hosted Codespace becomes unavailable for any reason, see our [troubleshooting](~/resources/troubleshooting.md#self-hosted-environments) reference documentation.
