---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Personalizing Visual Studio Online
ms.topic: overview
ms.date: 10/21/2019
---

# Personalizing

Visual Studio Online's [environments](../overview/what-is-vsonline.md#environments) are fully personalizable on a per user basis. This is accomplished by referencing a "dotfiles repo" at environment creation time and/or enabling [settings sync](https://code.visualstudio.com/docs/editor/settings-sync).

## Personalization using dotfiles

Dotfiles are files whose filename begins with a dot (`.`). They typically contain configuration information for various applications. They are used to control the way terminals, editors, source control and other various tools behave. `.bashrc`, `.gitignore` and `.editorconfig` are examples of dotfiles commonly used by developers.

It is common practice for developers to put their dotfiles on GitHub, so they can easily synchronize them between all of their development environments. If you don't have your own collection of carefully crafted dotfiles already, be sure to check out one of the [many dotfiles bootstrap projects](https://dotfiles.github.io/) that exist.

To configure a dotfiles repo in Visual Studio Code, press `F1` and select the **Preferences: Open Setting (UI)** command in the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).

In the **Settings** tab that opens, select the **Extensions** node in the navigation tree, followed by **Visual Studio Online**. 

![Visual Studio Online Settings in Visual Studio Code](../images/personalizing-dotfiles-vsc.png)

You can also configure dotfiles in from [online.visualstudio.com](https://online.visualstudio.com). Press the **Create environment** button, and expand the **Dotfiles (optional)** settings.

![Visual Studio Online Dotfiles Settings](../images/personalizing-dotfiles-vso.png)

In both experiences, there's three options that can be configured:

1. **Dotfiles Repository**: The URL of the Git repository that contains your desired dotfiles. (*Required to personalize an environment, optional otherwise*)
2. **Dotfiles Target Path**: The path where the dotfiles repo will be cloned. Defaults to `~dotfiles`. (*Optional*)
3. **Dotfiles Install Command**: The command to run after cloning the dotfiles repository. By default, VS Online scans the dotfiles repository and runs one of the following files:
    - `install.sh`
    - `install`
    - `bootstrap.sh`
    - `bootstrap`
    - `setup.sh`
    - `setup`

    If none of these files are found, then any files and folders starting with `.` are symlinked to the home (`~` or `$HOME` on Linux) directory.

Once the **Dotfiles Repository** is configured in VS Code, any environments created going forward will be personalized.

## Personalization using Settings Sync

> ![NOTE]
> Settings Sync is currently in Preview and is only available in Visual Studio Code Insiders.

[Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) allows you to sync a variety of settings, such as theme, keyboard shortcuts, extensions, and more across your various Visual Studio Code instances to give you tooling consistency whether you're working from a local Visual Studio Code instance or the browser-based editor.

To take advantage of settings sync, ensure you're connecting to your environment from within Visual Studio Code Insiders or enable Insiders for the browser based editor by:

- Navigating to the **Settings** pane from the user account card.
![Open settings](../images/access-settings.png)

- Toggling the Insiders setting to on.
![Turn on Insiders](../images/settings-pane.png)

Once you're connected to the environment, turn on Settings Sync using the **Turn On Preferences Sync...** entry in the **Manage** gear menu at the bottom of the **Activity Bar**.

For more information and troubleshooting Settings Sync, check out the [Visual Studio Code documentation](https://code.visualstudio.com/docs/editor/settings-sync).
