---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: What is Visual Studio Online?
ms.topic: overview
ms.date: 09/20/2019
---

# What is Visual Studio Online?

Welcome to Visual Studio Online! 

Visual Studio Online provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio ([sign up for private preview](http://aka.ms/vsfutures-signup)), Visual Studio Code, or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Online at no cost.

Additionally, Visual Studio Online brings the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads to development environments. However, Visual Studio Online was built to still allow developers to leverage the tools, processes and personalizations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will run you through some concepts and introduce you to our features. If you're looking for an abridged version, check out quickstarts.

## Concepts

The compelling features of Visual Studio Online builds on top of a few fundamental concepts. This section covers those concepts and gives a brief tour of features.

### Remote Development

<!-- TODO: Cleanup, talk about difference, DevOps Principles -->

Visual Studio Online conceptually and technically extends the [Visual Studio Code Remote Development extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). As explained in the [Remote Development with VS Code](https://code.visualstudio.com/blogs/2019/05/02/remote-development) blog post, "*We saw many developers trying to develop against containers and remote VMs configured with specific development and runtime stacks, simply because it is too hard, too disruptive, and in some cases impossible, to set up these development environments locally. We've all experienced this problem. Unless we feel it's time to flatten that machine, we hesitate to try out a new stack like Rust, Go, Node, or Python3, for fear of 'messing up' our current, well-tuned environment.*" 

Having remote-capable tools unblocks a ton of developer scenarios, but on their own, they still require you to manually manage machines. We've heard loud and clear that developers are spending too much time setting up their developer environments, and that it can get in the way of onboarding new team members or enabling you to quickly move between tasks.

### Environments

--- When you need to work on a new project, pick up a new task, or review a PR, you can simply spin up a cloud-based environment, and let the service take care of configuring it correctly. This allows you to spend more time coding, and little-to-no time installing dependencies. You can then connect to these environments using Visual Studio or Visual Studio Code (or both!) which ensures you can use the right tool for the job, and maximize your personal productivity, no matter where you are. 

- Azure-hosted
  - Managed
  - Scalable
  - Predictable pricing and Cost Control
  - Choose environment sizes to match the amount of resources you need for each project or task 
  - dynamic, disposable environments for PRs, feature branch, etc
  - Noisy Neighbor
-Self-hosted
  - Free

### Editors

- App remoting
- Includes productive editing and collaboration features like AI-powered completions and real-time co-editing 
- any language
- anywhere
- VS or VS Code
- extension marketplace

--- Developers are highly opinionated about their editor, and commonly spend countless hours customizing them. As a result, you’d want remote development and collaboration capabilities directly within your existing tools, where you spend the bulk of your time working. However, in some scenarios, it can actually be more convenient to perform a task in the browser, such as making a quick edit on-the-go, reviewing a PR, or joining a teammate’s Live Share session. To address this, we’re excited to share an early look at Visual Studio Online, a new web-based companion editor that compliments the Visual Studio family, and ensures you can work effectively from any device. 

---  In the future, you will be able to navigate to https://online.visualstudio.com and access any of your remote environments. Because Visual Studio Online is based on Visual Studio Code, it will feel immediately familiar, and benefits from the rich ecosystem of extensions you already know and love – while supporting both the Visual Studio Code workspaces, as well as Visual Studio’s projects and solutions. Additionally, it will support IntelliCode and Live Share out-of-the-box, which ensures it provides the rich collaboration and productivity features developers need. 

### Customized

- Rapid on boarding
- templates/docker

### Personalized

- Personalizations to feel immediately natural
- roaming identity
- settings
- themes

## Features


## See also