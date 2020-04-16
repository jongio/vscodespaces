---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Troubleshooting Visual Studio Online
ms.topic: overview
ms.date: 09/20/2019
---

# Troubleshooting Visual Studio Online

This resource document provides a list of tips and tricks to help remedy many possible issues you may be having with Visual Studio Online.

## General troubleshooting

### Loading issues

If you're experiencing missing icons, missing syntax highlighting, or your listing of environments is incorrect, try reloading the window. Either press your browser's refresh button, or in Visual Studio Code run the **Developer: Reload Window** command.

### Disable experimental features

If you're experiencing issues, particularly related to environment creation, try disabling all [experimental features](../reference/configuring.md#experimental-features) you may have enabled.

### Search known issues

There's a listing of [known issues and open bugs](https://github.com/MicrosoftDocs/vsonline/labels/bug) available on our issue tracker. Search there to see if anyone has posted a work around or update for your particular issue.

### File an issue

If all else fails, feel free to [file an issue](https://github.com/MicrosoftDocs/vsonline/issues/new). Our team will get back with you as soon as possible.

> [!TIP]
> You can gather relevant VS Online diagnostic logs by running the **VS Online: Export Logs** command. Attaching this log file to submitted issues will help our team support you better.

## Self-hosted environments

### Restore a self-hosted environment

If your self-hosted environment becomes unavailable, you can attempt to restore it on the registered machine. 

Right-click the self-hosted environment in the **VS Online** panel to reveal a context menu with a **Restore Local Environment** option. This option is only visible if you are currently working on the machine registered as a self-hosted environment.

Select the **Restore Local Environment** option and wait for a notification toast indicating that the environment has been restored.

### Incorrect Password for User (Windows)
If you're recieving an error of "Incorrect password for user" when attempting to register the self-hosted agent as a service, you may not have "Log on as a service" enabled on your user account. You'll need to [grant "Log on as a service"](https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/log-on-as-a-service) to your user account before registering the agent as a service.
