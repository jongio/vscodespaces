---
author: acangialosi
ms.author: anthc
ms.service: visual-studio-online
title: How to use Visual Studio Online with Visual Studio 2019
ms.topic: overview
ms.date: 05/05/2020
---

# Visual Studio Codespaces Visual Studio 2019 How-to

## Sign Up

A Microsoft Account and Azure Subscription are required to use Visual Studio Online.

You can sign up for both, as well as receive various Azure incentives at [https://azure.microsoft.com/free/](https://azure.microsoft.com/free/).

Access to the Visual Studio 2019 Private Preview is also required to complete this How-to. Sign up for the Private Preview here [https://aka.ms/vsfutures-signup](https://aka.ms/vsfutures-signup).

## Install

> [!TIP]
> If you don't have [Visual Studio 2019 Preview](http://aka.ms/vspreview) installed already, you can download it [here](http://aka.ms/vspreview). Check the **ASP.NET and web development**, **Desktop development with C++**, or both Workloads in the Installer. Then click **Install**.

Launch Visual Studio 2019 from the Start menu. If you just installed Visual Studio for the first time you'll see a welcome screen where you can sign in with any Microsoft identity.

When you reach Visual Studio's Start Window click **Continue without code**. Now open the **Tools** menu and click **Options...**. Search for **Preview features**. Check the **Connect to Visual Studio Codespaces(private preview only)** checkbox, then click **Ok** and restart Visual Studio.

## Sign in

After you enable the Connect to Visual Studio Codespases preview feature you will see a new **Connect to a Codespace** button in the Start Window and a new **Connect to a Codespace** command under the File menu. Click the **Connect to a Codespace** button. If you aren't already signed with an account that has access to the Private Preview, click account picker control to expand it in the upper right corner of the dialog and click **Add an account** to sign in.

## Create a plan

Once you've [signed up](#sign-up) and created an Azure subscription, you can access Visual Studio Codespaces by creating a Billing Plan. You can create more than one plan, and plans can be used to group related Codespaces together or to create Codespaces in different regions. Visual Studio Codespace Billing plans are the unit of billing in Azure, so you'll see a line item on your Azure bill for each plan you create.

Users will not be charge for Windows based Codespaces created during the Private Preview. More information about plans and pricing is available on [the VS Online pricing page](https://aka.ms/vso-pricing).

If this is your first time using Codespaces, click **New...** next to **Billing Plan**. 
![Create a billing plan](../images/vside-quickstart-01.png)

- **Azure subscription**: You can any listed Azure subscriptions when creating a billing plan. 
- **Resource group name**: Your Billing plan will be created in a new Azure resource group with the name provided in this step.
- **Plan name**: The name of the created Billing plan. 
- **Region**: Choose an [Azure region](https://azure.microsoft.com/global-infrastructure/regions/) to create the Billing plan. All environments created within this plan, will be provisioned in the region selected. Supported regions are:
  - East US
  - Southeast Asia
  - West Europe
  - West US 2
purposes.

Select the Azure subscription where you want to create the Billing plan and a region geographically close to where you'll use Codespaces; then click **Create**.

You can manage plans in the Azure portal and at http://online.visualstudio.com/environments.

Only environments contained within the selected plan will be displayed. Select a different plan from the drop down on the Connect to a Codespace dialog to see Codespaces created under those plans.

## Create a cloud-hosted Codespace

> [!NOTE]
> Cloud-hosted environments are extremely configurable. See [configuring environments](../reference/configuring.md) for advanced information about how to configure your environments.

To create a new Codespace open the **Connect to a Codespace** dialog using the  **Connect to a Codespace** button in the Start Window or the **Connect to a Codespace** command under the File menu. Then click the **New...** link next to the Codespaces label.

![Create a new Codespace](../images/vside-quickstart-02.png)

- **Name**: You can name your Codespace anything you'd like, but we recommend naming it after the project or task that you'll be using it for. (e.g. 'Todo App Environment', 'PR Review', 'Shopping Cart Feature')
- **Git Repository**: If a path to a Git repository is provided, VS Online will automatically clone that repository into the Codespace. You can specify a Git repository in one of many formats:
  - **Absolute Http(s) Git URL**: A complete Http or Https Url. It may end in a `.git` extension. Examples include:
    - https://github.com/organization/repo.git
    - https://organization@dev.azure.com/organization/repo/_git/repo
    - https://username@bitbucket.org/organization/repo.git
  - **GitHub Project URL**: The Https Url used to navigate to the homepage of a project on GitHub. (e.g. https://github.com/organization/repo)
  - **GitHub Short Form**: The forward slash delimited `organization/repo` format used to refer to projects on GitHub.
  - **GitHub Pull Request URL**: The Https Url used to navigate to a pull request in GitHub. (e.g. https://github.com/organization/repo/pull/123)
- **Instance Type**: The CPU and memory configuration that will be provisioned for your environment. **Premium (Windows)** are the only available instance type initially. **Standard (Windows)** will come online in the near future. Choose **Standard (Windows)** for most projects, and **Premium (Windows)** for those that require a little extra power. 
- **Suspend idle Codespace after...**: The length of disconnected time before a Codespace will be automatically suspended. Choose between:
  - 5 minutes
  - 30 minutes
  - 2 hours

> [!TIP]
> The guided environment creation experience described above supports Git repositories over the HTTP(S) scheme. To use another source control provider, or Git over SSH, simply leave the **Git Repository** setting blank, and use the environment's terminal support to clone your source code.

Click **Create** to start provisioning the Codespace. Your new Codespace will immediately appear in the list of available Codespaces with a progress indicator while its getting setup. Codespaces only take about a minute to provision. Once the Codespace is ready you'll see the progress indicator change to an Active status indicator. Note if you let the Codespace sit idle longer than the suspend period the icon will change to a suspended icon.
