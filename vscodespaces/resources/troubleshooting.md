---
author: nikmd23
ms.author: nimolnar
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Troubleshooting Visual Studio Codespaces
description: Troubleshooting guidance for Visual Studio Codespaces
ms.topic: troubleshooting
ms.date: 09/20/2019
---

# Troubleshooting Visual Studio Codespaces

> [!IMPORTANT] 
> Visual Studio Codespaces is being consolidated into [GitHub Codespaces](https://github.com/features/codespaces). New user signups and codespace creation suspended on December 16th, 2020. The service will be retired and all data deleted on February 17th, 2021. See our [FAQs](https://docs.microsoft.com/visualstudio/codespaces/resources/consolidation-faq#im-a-current-visual-studio-codespaces-user-how-do-i-move-to-the-github-beta) for guidance on your transition to GitHub Codespaces.

This resource document provides a list of tips and tricks to help remedy many possible issues you may be having with Visual Studio Codespaces.

## General troubleshooting

### Loading issues

If you're experiencing missing icons, missing syntax highlighting, or your listing of environments is incorrect, try reloading the window. Either press your browser's refresh button, or in Visual Studio Code run the **Developer: Reload Window** command.

### Disable experimental features

If you're experiencing issues, particularly related to environment creation, try disabling all experimental features by going to **Settings** > **Extensions** > **Visual Studio Codespaces** > **Feature Set**.

### Search known issues

There's a listing of [known issues and open bugs](https://github.com/MicrosoftDocs/vsonline/labels/bug) available on our issue tracker. Search there to see if anyone has posted a work around or update for your particular issue.

### File an issue

If all else fails, feel free to [file an issue](https://github.com/MicrosoftDocs/vsonline/issues/new). Our team will get back with you as soon as possible.

> [!TIP]
> You can gather relevant Codespaces diagnostic logs by running the **Codespaces: Export Logs** command. Attaching this log file to submitted issues will help our team support you better.

## Self-hosted environments

### Administrator permission required (Windows)
If you are registering a self-hosted Codespace via VS Code, you may see the message "Administrator permission required" under the "Register as a service" option. Administrator privileges are required to create a Windows service, so to enable this feature, you'll need to open a new instance of VS Code using the "Run as Administrator" option and restart the registration process. Alternatively, the "Run as a process" option does not require VS Code to be run as administrator.

### Incorrect Password for User (Windows)
If you're recieving an error of "Incorrect password for user" when attempting to register the self-hosted agent as a service, you may not have "Log on as a service" enabled on your user account. You'll need to [grant "Log on as a service"](https://docs.microsoft.com/windows/security/threat-protection/security-policy-settings/log-on-as-a-service) to your user account before registering the agent as a service.

### Restore a self-hosted Codespace
If your self-hosted Codespace becomes unavailable, you can attempt to restore it using VS Code on the registered machine. 

Right-click the self-hosted environment in the **Codespaces** panel to reveal a context menu with a **Restore Self-Hosted Codespace** option. This option is only visible if you are currently working on the machine registered as a self-hosted Codespace.

Select the **Restore Self-Hosted Codespace** option and wait for a notification toast indicating that the Codespace has been restored.

## Partially Supported Browsers
Due to browser restrictions, you may not get the full set of features in Safari and Firefox.

### Safari Known Issues:
- Unable to customize keybindings or context menu entries for Copy and Paste. Default keybindings to Copy/Paste in Editor, Terminal and all native input elements will still work.
- Some fonts are not allowed as Safari disallows some web fonts to prevent finger printing [#83294](https://github.com/microsoft/vscode/issues/83294), for example Fira Code.
- No Pinch to Zoom customization.
- "Open documentation" button in the Preferences Sync dialog opens a blank page. This is currently tracked by Issue #[473](https://github.com/MicrosoftDocs/vsonline/issues/473). See [Setting Sync documentation](https://code.visualstudio.com/docs/editor/settings-sync).

### Firefox Known Issues:
- Unable to customize keybindings. Basic keyboard shortcuts like **Ctrl/Cmd+N** to create new file and **Ctrl/Cmd+W** to close current file don't work. 
