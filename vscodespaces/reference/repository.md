---
author: edgonmsft
ms.author: edgon
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Repository Options with Visual Studio Codespaces
description: Visual Studio Codespaces GitHub repository support.
ms.topic: reference
ms.date: 02/25/2020
---

# Repository support in Visual Studio Codespaces

> [!IMPORTANT] 
> Visual Studio Codespaces is being consolidated into [GitHub Codespaces](https://github.com/features/codespaces). New user signups and codespace creation suspended on December 16th, 2020. The service will be retired and all data deleted on February 17th, 2021. See our [FAQs](https://docs.microsoft.com/en-us/visualstudio/codespaces/resources/consolidation-faq#im-a-current-visual-studio-codespaces-user-how-do-i-move-to-the-github-beta) for guidance on your transition to GitHub Codespaces.

Visual Studio Codespaces's [environments](../overview/what-is-vsonline.md#environments) can be initialized with a Git repository. In addition, a [devcontainer.json](configuring.md) file placed in the repository provides additional configuration opportunities.

Repository support is handled using the Git clone URL obtained from your source control provider. Any URL that can be locally cloned on your machine should work.

## Private repositories

It's possible to clone private repositories using a Visual Studio Code extension, or the browser.

### Visual Studio Code extension

Our [Visual Studio Code extension](https://marketplace.visualstudio.com/items?itemName=ms-vsonline.vsonline) uses your local Git installation to obtain credentials to perform clone operations. Therefore, we do not save your credentials.

### Browser

Our browser support performs OAuth authentication flows for the selected repository hosting provider of the Git URL.

We currently support GitHub as a hosting provider. However, work to improve and extend our support for additional hosting providers is ongoing.

## Supported URL types

The URL types in the following section are supported.

### GitHub

| URL Type | Example | Description |
|----------|---------|-------------|
| Short form | owner/repo | We also support a short form URL that only contains the owner and repository name. |
| Branch | `https://github.com/owner/repo/tree/name` | Branches will be checked out. |
| Commit | `https://github.com/owner/repo/commit/ID` | Commits will be checked out in a DETACHED state. |
| Pull request | `https://github.com/owner/repo/pull/1` | The repository and branch referenced in a pull request will be cloned and checked out. In addition, the GitHub Pull Request VS Code extension will automatically be configured. |
