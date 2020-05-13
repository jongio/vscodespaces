---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: What is Visual Studio Codespaces?
ms.topic: overview
ms.date: 05/13/2020
---

# What is Visual Studio Codespaces?

Welcome to Visual Studio Codespaces! We're glad you're here.

Visual Studio Codespaces provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio Code, Visual Studio 2019 ([sign up for the Private Preview](https://aka.ms/vsfutures-signup)), or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Codespaces at no cost.

Additionally, Visual Studio Codespaces brings many of the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads, to development environments. However, Visual Studio Codespaces is also personalizable to allow developers to leverage the tools, processes and configurations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will run you through some concepts and introduce you to our features. If you're looking for an abridged version, check out [the quickstarts](../quickstarts/browser.md).

## Concepts and features

The compelling features of Visual Studio Codespaces are built on top of a few fundamental concepts. This section covers those concepts and gives a brief tour of features.

### Remote Development

Visual Studio Codespaces conceptually and technically extends the [Visual Studio Code Remote Development extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). As explained in the [Remote Development with VS Code](https://code.visualstudio.com/blogs/2019/05/02/remote-development) blog post, we built Visual Studio Codespaces because "_We saw many developers trying to develop against containers and remote VMs configured with specific development and runtime stacks, simply because it is too hard, too disruptive, and in some cases impossible, to set up these development environments locally. We've all experienced this problem. Unless we feel it's time to flatten that machine, we hesitate to try out a new stack like Rust, Go, Node, or Python3, for fear of 'messing up' our current, well-tuned environment._"

Having remote-capable tools unblocks a ton of developer scenarios, but on their own, they still require you to manually manage machines. We've heard loud and clear that developers are spending too much time setting up their developer environments, and that it can get in the way of onboarding new team members or enabling you to quickly move between tasks. Visual Studio Codespaces aims to solve these problems, and more.

If you're the do-it-yourself type of person and like to manage your own machines, we'd love for you to use [Visual Studio Code's Remote Development](https://code.visualstudio.com/docs/remote/remote-overview). If you're looking for a managed solution that lets you focus more on productivity and less on setup, then read on and give Visual Studio Codespaces a try.

### Environments

An environment is the "backend" half of Visual Studio Codespaces. It's where all of the compute associated with software development happens: compiling, debugging, restoring, etc. When you need to work on a new project, pick up a new task, or review a PR, you can simply spin up an Cloud-hosted environment, and Visual Studio Codespaces takes care of configuring it correctly. It automatically configures everything you need to work on your project: the source code, runtime, compiler, debugger, editor, custom dotfile configurations, relevant editor extensions and more.

Cloud-hosted development environments come with all of the benefits of the cloud, powered by Azure:

- They are fast to create and disposable. Create as many as you want (up to subscription limits), and throw them away when you're done. It's just that easy.
- They are managed, reducing overall maintenance for you.
- They have predictable pricing and you only pay for what you use, with built in auto-suspend to eliminate runoff costs.
- Moving your development workload to the cloud frees up resources on your personal machine to email, chat, stream music, or even to simultaneously work on more projects.

In addition to cloud-hosted environments, Visual Studio Codespaces also allows you to register and connect your own self-hosted environments. This allows you to use an environment you may have already perfectly tuned and experience some of the benefits of Visual Studio Codespaces, for free!

### Editors and IDEs

To go along with "backend" environments, Visual Studio Codespaces also supports three "frontend" editors: Visual Studio Code, Visual Studio 2019 (Private Preview) and our Visual Studio Code-based editor in the browser. Linux environments (Public Preview) are accessible from Visual Studio Code and our Visual Studio Code-based editor in the browser. Windows environments (Private Preview) are accessible from all three "frontend" editors. This allows you to use the tool best suited for the job at hand, and the ability do that job from anywhere, with any language or framework. Even better, the experience is super-charged with our support for extensions from [the Visual Studio Marketplace](https://marketplace.visualstudio.com/).

### Customized for your project

To maximize your productivity, every Visual Studio Codespaces environment is carefully crafted with the needs of a specific project or task in mind. This can either be accomplished automatically with our smart-configuration features, or you can finely tune your environments with JSON and Dockerfile configuration overrides. Either way, our dynamic environments are quick to create, reproducible and reliable.

Quickly created development environments enable easy onboarding for team members new to your project, and allows you to get started on new or exotic projects that would otherwise be cumbersome to try out. Additionally, reproducible development environments eliminate the "works on my machine" problem.

### Personalized for you

Developers are highly opinionated about their editor and terminal configurations, and commonly spend countless hours customizing them. As a result, Visual Studio Codespaces not only allows for development environments customized per project, but also layers on individual personalizations so that our Cloud-hosted environments feel immediately natural to use no matter how you like to work.

Environments can be created with a user specific collection of custom dotfiles (e.g. `.bashrc`, `.gitconfig`, etc.), and we automatically roam your Git identity, themes and settings so every environment you create looks and feels the way you like, regardless of the project specific environment capabilities.

## See also

### Quickstarts

- [Visual Studio Codespaces in the browser](../quickstarts/browser.md)
- [Visual Studio Codespaces in Visual Studio Code](../quickstarts/vscode.md)
- [Visual Studio Codespaces in Visual Studio 2019](../quickstarts/vs.md)

### How-tos

- [Visual Studio Codespaces in the browser](../how-to/browser.md)
- [Visual Studio Codespaces in Visual Studio Code](../how-to/vscode.md)
- [Visual Studio Codespaces in Visual Studio 2019](../how-to/vside.md)

### Reference & Resources

- [Configuration](../reference/configuring.md)
- [Personalization](../reference/personalizing.md)
- [Repositories](../reference/repository.md)
- [Troubleshooting](../resources/troubleshooting.md)
- [FAQ](../resources/faq.md)
- [Feedback](../resources/feedback.md)
