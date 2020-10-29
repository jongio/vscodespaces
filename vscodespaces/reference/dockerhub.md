---
author: chuxel
ms.author: clantz
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: DockerHub
description: Avoiding DockerHub Pull Limits
ms.topic: reference
ms.date: 10/28/2020
---

# Avoiding DockerHub Pull Limits

Docker [recently announced](https://www.docker.com/pricing/resource-consumption-updates) that there will be limits on the number of image "pulls" their free tiers provide starting November 2nd, 2020. This includes pulling images from DockerHub as when building an image. Critically, there is a limit of 100 anonymous pulls per-IP every six hours.

Since Visual Studio Codespaces resides in Azure, IPs are not predictable, so this could affect you in two ways:

1. If you use a custom image, Dockerfile, or Docker Compose file that referneces a DockerHub image, you may experience throttling when creating a codespace.
2. Once inside a codespace, you may experience throttling when using the Docker CLI inside the codespace.

> [!NOTE] The default Codespaces image is not affected by these pull limits.

## Avoiding throttling when creating a codespace

It is worth noting that [GitHub Codespaces](https://github.com/features/codespaces) should not experience this throttling and will also have the ability to allow you to sign in to DockerHub over time. We recommend transitioning to GitHub Codespaces to side step this problem entirely. Codespace creation will be disabled in VS Codespaces on November 20th, 2020 as a part of the transition so this is another good reason to transition.

If you need to continue to create new codspaces in VS Codespaces until November 20th, we strongly recommend not using public images from DockerHub and instead either:

- Using images from the Microsoft container registry like the [.NET images](https://hub.docker.com/_/microsoft-dotnet) or the [pre-built dev container images](https://hub.docker.com/_/microsoft-vscode-devcontainers).
- Pushing your DockerHub images to another public registry like [GitHub Container Registry](https://docs.github.com/en/free-pro-team@latest/packages/getting-started-with-github-container-registry/about-github-container-registry) and referencing these instead.

## Avoiding throttling when working with Docker inside a codespace

Once inside a codespace, you can avoid these limits by simply [loggig into the Docker CLI](https://docs.docker.com/engine/reference/commandline/login/). A free account and you can raise the pull request limits to 200 every six hours for your user and is not subject to IP limits. There are also [paid tiers](https://www.docker.com/pricing) that lift this limit entirely.

From a terminal, run:

```bash
docker login -u your-user-name-here
```
