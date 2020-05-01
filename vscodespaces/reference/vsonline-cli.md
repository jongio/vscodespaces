---
author: abuchholtzau
ms.author: allisb
ms.service: visual-studio-online
title: How to use the Codespaces CLI
ms.topic: overview
ms.date: 04/06/2020
---

# Codespaces CLI Reference

## Installation

### Windows

#### Install via Powershell

Download and execute the [PowerShell script](https://aka.ms/install-vso-windows) to install the Codespaces CLI.

### macOS

Homebrew is the easiest way to manage your CLI install. It provides convenient ways to install, update, and uninstall. If you don't have homebrew available on your system, [install homebrew](https://docs.brew.sh/Installation.html) before continuing.

You can install the CLI by updating your brew repository information, and then running the install command:

```bash
brew install microsoft/vsonline/vso
```

### Linux

#### Install via `apt`

Add the public key for the microsoft repo:

```bash
sudo curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
```

Add the necessary repo for your release:

- Ubuntu
  
  - Ubuntu 18.04:
  
  ```bash
  sudo add-apt-repository https://packages.microsoft.com/ubuntu/18.04/prod/
  ```

  - Ubuntu 16.04:
  
  ```bash
  sudo add-apt-repository https://packages.microsoft.com/ubuntu/16.04/prod/
  ```

  - Ubuntu 14.04:
  
  ```bash
  sudo add-apt-repository https://packages.microsoft.com/ubuntu/14.04/prod/
  ```

- Debian
  
  - Debian 10:

    ```bash
    sudo apt install software-properties-common
    sudo apt install apt-transport-https
    sudo add-apt-repository https://packages.microsoft.com/debian/10/prod/
    ```

  - Debian 9:

    ```bash
    sudo apt install software-properties-common
    sudo apt install apt-transport-https
    sudo add-apt-repository https://packages.microsoft.com/debian/9/prod/
    ```

  - Debian 8:

    ```bash
    sudo apt install software-properties-common
    sudo apt install apt-transport-https
    sudo add-apt-repository https://packages.microsoft.com/debian/8/prod/
    ```

Update `apt-get`:

```bash
sudo apt-get update
```

Install the Codespaces CLI:

```bash
sudo apt-get install vso
```

For other Linux distributions, run the following script by using curl and pipe directly to bash, or download the script to a file and inspect it before running.

```bash
curl -L https://aka.ms/install-vso-linux | sudo bash
```

## Usage

Codespaces is launched using the following command:

```bash
vso [options] [command] [[--] <arg>...]
```

The following **options** can be provided to Codespaces:

- **`-v | --version`**
  Displays the current installed version of the CLI

- **`-? | -h | --help`**
  Prints out help information for the command

The following **commands** are available:

- **`start`**
  Begins the interactive process of registering your self-hosted machine. For more information, see [Start Codespaces](#start-vs-online).

- **`stop`**
  Removes your machine from Visual Studio Codespaces

## Start Codespaces

The **`start`** command begins the interactive process of registering your self-hosted machine:
  
  ```bash
  vso start [args]
  ```

These arguments can be provided to the start command:

> [!NOTE]
> You can either specify your plan by supplying either the subscription, resource group, and name or the plan id.

- **`-s | --subscription`**
The Subscription of the plan this environment should be registered to

- **`-r | --resource-group`**
The Resource Group of the plan this environment should be registered to

- **`-p | --plan-name`**
The existing plan name this environment should be registered to

- **`-i | --plan-id`**
The fully qualified plan id ('/subscriptions/...')

- **`-w | --workspace-path`**
The workspace path. By default, the CLI will use the current working directory as the landing point when you connect. You will be able to switch folders after connection.

- **`-n | --name`**
The environment name

- **`-v | --service`**
If supplied, runs the local agent as a service/daemon on this machine (Requires admin/sudo privileges on Windows and OSX)

- **`-? | -h | --help`**
Show help information

## Stop Codespaces

The **`stop`** command removes your environment from the Visual Studio Codespaces service:
  
  ```bash
  vso stop
  ```
