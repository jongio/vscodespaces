---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Configuring Visual Studio Online
ms.topic: overview
ms.date: 09/20/2019
---

# Configuring

- link to devcontainer.json reference
  - Explicitly list the properties we support
  - ports
  - extensions
    - default behavior
  - portCreateCommand
    - default bahavior
- link to dockerfile reference
- dotfiles
  - repo
  - target path
  - install command

    The optional install command is executed.
    if there's no command specified, on of the following scripts run (if available in cloned repo)
    "install.sh",
    "install",
    "bootstrap.sh",
    "bootstrap",
    "setup.sh",
    "setup",
    if neither of those things are available, files and folders starting with "." are symlinked to home (~ or $HOME on linux, e.g. /home/cloudenv for default kitchensink images) directory.
