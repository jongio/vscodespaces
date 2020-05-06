---
author: edgonmsft
ms.author: edgonmsft
ms.service: visual-studio-online
title: Repository Options Visual Studio Codespaces
ms.topic: overview
ms.date: 02/25/2020
---

# Repository support in Visual Studio Codespaces

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
| Pull request | `https://github.com/owner/repo/pull/1` | The repository and branch referenced in a pull request will be cloned and checked out. In addition, the GitHub Pull Request VSCode extension will automatically be configured. |
