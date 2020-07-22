---
author: nikmd23
ms.author: nimolnar
ms.prod: visual-studio-family
ms.technology: visual-studio-codespaces
title: Configure Codespace Environments
ms.topic: reference
ms.date: 05/13/2020
---

# Configure Codespace Environments

> [!NOTE]
> This document applies to Codespaces environments running on Linux instance types, Windows instance types cannot currently be customized. You can find more about the capabilities of the Windows instance types in document on [Windows customizations](configuring-windows.md).

Codespace [environments](../overview/what-is-vsonline.md#environments) are fully customizable on a per project basis. Customization is accomplished by including a **devcontainer.json** file in the project's repository.  We currently support [Dockerfiles](#dockerfile-support) and [Docker Compose](#docker-compose-support) as part of environment provisioning.

Example customizations include:

- Setting which Linux based operating system to use
- Automatically installing various tools, runtimes and frameworks
- Forwarding commonly used ports
- Setting environment variables
- Configuring editor settings and installing preferred extensions

The **devcontainer.json** file can be placed in one of two places in a repository:

1. **{repository-root}/.devcontainer.json**
2. **{repository-root}/.devcontainer/devcontainer.json**

> [!WARNING]
> **devcontainer.json** files are also used to support Visual Studio Code Remote Development, and have additional properties not covered in this document. These additional properties are safe to add to the file, but will be ignored by Codespaces. For more information, see the [devcontainer.json reference](https://code.visualstudio.com/docs/remote/devcontainerjson-reference) on code.visualstudio.com.

A container with a default image will be provided when a **devcontainer.json** file isn't included, or when the `image`,  `dockerFile` or `docker-compose` properties are not specified. The default image has the following tools and SDKs:

- Python
- Node.js
- .NET Core
- PHP
- Java
- sudo
- fish
- zsh
- Powershell
- Azure CLI
- Docker
- Kubectl - Must be configured before first use
- nvm
- nvs

> [!NOTE]
> The versions of Python, Node.js, .NET Core, and PHP in the container are based on the latest [Oryx](https://github.com/Microsoft/Oryx) image.

## Container features

Our service sets the following features by default in environments created without any special configuration in a **devcontainer.json** file. These features can also be manually specified when creating environments through any of the advanced configurations described later in this article.

### Host Network mode

Containers are created by default with `--network host` in the case of the default image, custom image, or custom Dockerfile scenarios. This allows the user to create side-by-side containers that have network access to the main container. For docker-compose scenarios, the default setting is not applied and should be specified in the docker-compose file.

If a `--network` property is included in `runArgs` as part of a **devcontainer.json** file it will override this default setting.

### Docker socket mount

Our service implements the DoD (Docker-outside-Docker) model. In default image scenarios, the docker socket is mounted to the container, allowing the user to control docker and create side-by-side containers.

For DiD (Docker in Docker), you must create a devcontainer.json file that references a docker image or Dockerfile with the necessary features like the `docker` image. See [Docker](https://hub.docker.com/_/docker/).

### Temporary SSD mount

To improve I/O performance during intensive operations, we mount a local SSD drive to the `/tmp` folder inside the container. The exact IOPS for the `/tmp` directory depends on the Codespace SKU. Any operation performed in this folder will be not be persisted across suspend/resume sessions, but it will get much faster I/O performance. This mount is applied by default in all configuration scenarios.

It can be disabled applying the following to the **devcontainer.json** file:

  ```json
    "codespaces": {
      "shouldEnableTmpMount" : false
    },
  ```

> [!WARNING]
> The contents of this folder will be lost when the environment is suspended and resumed.

## Container requirements

Containers should be able to fulfill requirements of both [VS Code Remote Server](https://code.visualstudio.com/docs/remote/containers#_system-requirements) and [Live Share](/visualstudio/liveshare/reference/linux#install-linux-prerequisites).

## Container provisioning

Start provisioning a container by including a **devcontainer.json** file in the project repository. A terminal containing the details of the build process will appear, and can be used to aid in diagnosing creation failures.

### Image support

Add the `image` argument and value to a **devcontainer.json** file in the project repository. The image must be in a public repository.

A possible workflow to speed up environment creations would be to create this image as part of a Continuous Integration process and reference a particular tag here. Downloading a pre-built image is often faster than building a `Dockerfile` on-the-fly.

### Dockerfile support

Add the `dockerFile` argument and value to your **devcontainer.json** to provision a custom container.

Include the Dockerfile as part of the repository. We recommend placing it in the **.devcontainer** folder with the **devcontainer.json** file.

### Docker Compose support

To create a custom container using Docker Compose, you'll need to specify the following arguments in the **devcontainer.json**:

- The path to docker-compose file, relative to the location of devcontainer.json.
- The name of the service you want to connect to when you start the session.
  - Currently, we only support connecting to one service per Codespace.
- A docker-compose file with:
  - Version 3 or higher.
  - A service matching the one in devcontainer.json with an image or docker file that fulfills our [requirements](#container-requirements).

We currently support multiple docker-compose files for provisioning a Codespace.

## Use Docker within a Codespace

Our general container comes with Docker installed and we automatically create a Docker group. This configuration allows you to access Docker without `sudo`.

If you'd like to access Docker within a custom container you can add the docker socket mount as part of a run argument or the mounts property as follows:

  ```json
    "runArgs": [
    "-v", "/var/run/docker.sock:/var/run/docker.sock"],
  ```

Or

  ```json
    "mounts": [
    "source=/var/run/docker.sock,target=/var/run/docker.sock,type=bind"],
  ```

If you'd like to run docker commands without sudo you'll need to create a `docker` group inside your container with id 800, and add your container user to that group. For example:

  ```bash
  groupadd -g 800 docker
  usermod -a -G docker USER
  ```

## Codespaces configuration reference

The following tables list the configuration properties supported by Codespaces. All properties are optional, unless otherwise noted.

### General properties

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | array | An array of [VS Code Extension Marketplace](https://marketplace.visualstudio.com/vscode) IDs that specify the extensions that should be installed in the environment when it is created. By default, Codespaces installs the recommended extensions for the an environment's most prominent language. |
| `settings` | object | Adds [VS Code `settings.json`](https://code.visualstudio.com/docs/getstarted/settings) values into the environment.  |
| `forwardPorts`| integer or array | A port or array of ports that should be automatically forwarded locally when the environment is running. By default, no ports are forwarded. This is the preferred method of port forwarding. |
| `appPort` | integer or array | A port or array of ports that should be automatically forwarded locally when the environment is running. By default, no ports are forwarded. |
| `postCreateCommand` | string or array | A command string or list of command arguments to run after the environment is created. Use `&&` in a string to execute multiple commands. For example, `"yarn install"`, `["yarn", "install"]`, or `"apt-get update && apt-get install -y git"`. It fires after your source code has been cloned, so you can also run shell scripts from your source repo. For example: `bash .devcontainer/install-dev-tools.sh`. By default, `oryx build` is run. To disable [Oryx](https://github.com/microsoft/Oryx) behavior, set the value to empty string (`""`) or empty array (`[]`). |

### Docker properties

| Property | Type | Description |
|----------|------|-------------|
| `image` | string | The name of an image in a public container registry (e.g. [DockerHub](https://hub.docker.com), [Azure Container Registry](https://azure.microsoft.com/services/container-registry/), [GitHub](https://github.com/features/package-registry)) that Codespaces should use to create the environment. |
| `dockerFile` | string | The location of a [Dockerfile](https://docs.docker.com/engine/reference/builder/) that Codespaces will `docker build` and use the resulting Docker image for the environment. The path is relative to the **devcontainer.json** file. You can find a number of sample Dockerfiles for different configurations in the [vscode-dev-containers repository](https://github.com/Microsoft/vscode-dev-containers/tree/master/containers).
| `dockerComposeFile` | string or array | A single or a list of docker-compose yml files that will be applied when executing `docker-compose up`. |
| `service` | string | The name of the service declared inside the docker-compose file that the user wants to connect to. |
| `context` | string | Path that the Codespaces `docker build` command should be run from, relative to **devcontainer.json**. For example, a value of `".."` would allow you to reference content in sibling directories. Defaults to `"."`. |
| `runArgs` | string | Arguments passed to docker when creating the container. Only `-e`, `-u`, `--network`, `--privileged`, `--cap-add=SYS_PTRACE`, `--security-opt seccomp=unconfined` and the docker socket bind mount are taken into account. |
| `overrideCommand` | string | Tells VS Code whether it should run `/bin/sh -c "while sleep 1000; do :; done"` when starting the container instead of the container's default command. This property defaults to true, since the container can shut down if the default command fails. It should be set to false if the default command must run for the container to function correctly. |
| `containerEnv` | object | A set of name-value pairs that sets or overrides environment variables for the container.  |
| `remoteEnv` | object | A set of name-value pairs that sets or overrides environment variables for VS Code (or sub-processes like terminals), but not the whole container. Updates are applied when the environment is suspended and restarted, or after five minutes have passed after disconnecting. |
| `containerUser` | string or array | The user that will be used when creating the container. If the property is undefined, it defaults to either root or the last USER instruction in the Dockerfile. |
| `remoteUser` | string or array | Overrides the user that VS Code runs as in the container (along with sub-processes like terminals, tasks, or debugging). This property defaults to the `containerUser`. |
| `build.args` | object | An object containing Docker image build arguments that should be passed when building a Dockerfile. Defaults to not set. For example: "build": { "args": { "MYARG": "MYVALUE" } } |
| `build.target` | string | An string that specifies a Docker image build target that should be passed when building a Dockerfile Defaults to not set. For example: "build": { "target": "development" } |

### Codespaces properties

| Property | Type | Description |
|----------|------|-------------|
| `codespaces.shouldEnableTmpMount` | boolean | Defaults to `true`. Setting `false` disables mounting the local SSD in the container's `/tmp` folder. |

## Codespaces configuration sample

> [!TIP]
> **devcontainer.json** files support JSON with Comments (jsonc)!

```js
/* Contents of {repository-root}/.devcontainer/devcontainer.json */

{
  // Open port 3000 by default
  "appPort": 3000,

  // Install ESLint and Peacock extensions
  "extensions": [
    "dbaeumer.vscode-eslint",
    "johnpapa.vscode-peacock"
  ],

  // Set remote color for Peacock
  "settings": {
    "peacock.remoteColor": "#0078D7"
  },

  // Run Bash script in .devcontainer directory
  "postCreateCommand": "/bin/bash ./.devcontainer/post-create.sh > ~/post-create.log",
}
```
