---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: What is Visual Studio Online?
ms.topic: overview
ms.date: 09/20/2019
---

# What is Visual Studio Online?

Welcome to Visual Studio Online! We're glad you're here.

Visual Studio Online provides cloud-powered development environments for any activity - whether it's a long-term project, or a short-term task like reviewing a pull request. You can work with these environments from Visual Studio ([sign up for private preview](http://aka.ms/vsfutures-signup)), Visual Studio Code, or a browser-based editor that's accessible anywhere! You can even connect your own self-hosted environments to Visual Studio Online at no cost.

Additionally, Visual Studio Online brings the benefits of DevOps, like repeatability and reliability, which have typically been reserved for production workloads to development environments. However, Visual Studio Online was built to still allow developers to leverage the tools, processes and personalizations that they have come to love and rely on - truly the best of both worlds!

Ready to get going? This document will run you through some concepts and introduce you to our features. If you're looking for an abridged version, check out quickstarts.

## Concepts

The compelling features of Visual Studio Online are built on top of a few fundamental concepts. This section covers those concepts and gives a brief tour of features.

### Remote Development

Visual Studio Online conceptually and technically extends the [Visual Studio Code Remote Development extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). As explained in the [Remote Development with VS Code](https://code.visualstudio.com/blogs/2019/05/02/remote-development) blog post, we built Visual Studio Online because "*We saw many developers trying to develop against containers and remote VMs configured with specific development and runtime stacks, simply because it is too hard, too disruptive, and in some cases impossible, to set up these development environments locally. We've all experienced this problem. Unless we feel it's time to flatten that machine, we hesitate to try out a new stack like Rust, Go, Node, or Python3, for fear of 'messing up' our current, well-tuned environment.*" 

Having remote-capable tools unblocks a ton of developer scenarios, but on their own, they still require you to manually manage machines. We've heard loud and clear that developers are spending too much time setting up their developer environments, and that it can get in the way of onboarding new team members or enabling you to quickly move between tasks. Visual Studio Online aims to solve these problems, and more.

If you're the do-it-yourself type of person and like to manage your own machines, we'd love for you to use Visual Studio Code's Remote Development extensions. If you're looking for a managed solution that lets you focus more on productivity and less on setup, then read on and give Visual Studio Online a try.

### Environments

An environment is the "backend" half of Visual Studio Online. It's where all of the compute associated with software development happens: compiling, debugging, restoring, etc. When you need to work on a new project, pick up a new task, or review a PR, you can simply spin up an Azure-based environment, and Visual Studio Online takes care of configuring it correctly. It automatically encapsulates everything you need to work on your project: the source code, runtime, compiler, debugger, editor, relevant editor extensions and more. 

Azure-hosted development environments come with all of the benefits of Azure:

  - They are fast to create and disposable. Create as many as you want, and throw them away when you're done. It's just that easy.
  - They are managed, reducing overall maintenance for you.
  - They have predictable pricing and you only pay for what you use, with built in auto-sleep to eliminate runaway costs.
  - Moving your development workload to the cloud frees up resources on your personal machine to email, chat, stream music, or even work on more projects at the same time. 

In addition to Azure-hosted environments, Visual Studio Online also allows you to register and connect your own self-hosted environments. Experience some of the benefits of Visual Studio Online for free!

### Editors

Visual Studio Online supports three "front end" editors: Visual Studio Code, Visual Studio IDE (private preview) and our Visual Studio Code based editor in the browser. You can connect any of these "front ends" to a "backend" environment. With these choices, you can use the tool best suited for the job at hand, and can do that job from anywhere, with any language or framework. You can even super-charge your experience with extensions from the marketplace.

### Customized

- Rapid on boarding
- templates/docker

### Personalized

--- Developers are highly opinionated about their editor, and commonly spend countless hours customizing them. As a result, you’d want remote development and collaboration capabilities directly within your existing tools, where you spend the bulk of your time working. However, in some scenarios, it can actually be more convenient to perform a task in the browser, such as making a quick edit on-the-go, reviewing a PR, or joining a teammate’s Live Share session. To address this, we’re excited to share an early look at Visual Studio Online, a new web-based companion editor that compliments the Visual Studio family, and ensures you can work effectively from any device. 

---  In the future, you will be able to navigate to https://online.visualstudio.com and access any of your remote environments. Because Visual Studio Online is based on Visual Studio Code, it will feel immediately familiar, and benefits from the rich ecosystem of extensions you already know and love – while supporting both the Visual Studio Code workspaces, as well as Visual Studio’s projects and solutions. Additionally, it will support IntelliCode and Live Share out-of-the-box, which ensures it provides the rich collaboration and productivity features developers need. 

- Personalizations to feel immediately natural
- roaming identity
- settings
- themes

## Features

- App remoting
- Includes productive editing and collaboration features like AI-powered completions and real-time co-editing 
- any language
- anywhere
- VS or VS Code
- extension marketplace


## See also