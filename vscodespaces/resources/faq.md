---
author: nikmd23
ms.author: nimolnar
ms.service: visual-studio-online
title: Visual Studio Online Frequently Asked Questions
ms.topic: overview
ms.date: 09/20/2019
---

# FAQ

## General questions

## How does Visual Studio Online relate to Visual Studio Code Remote Development?


## Billing questions

### What is an Environment Unit? 

Environment Units bundle compute, network, snapshot and disk costs together. A Visual Studio Online environment instance is billed on an hourly basis according to a base set of environment units which depend on the environment instance size.  A standard Visual Studio Online environment has a different base rate of environment units than a premium Visual Studio Online environment due to the difference of compute, network, snapshot and disk costs together. While environment pricing is listed in units per hour, usage is calculated per-second (including fractional units), so you only pay for exactly what you use.

### What happens when I'm not using an environment? 

Once created, you can connect to an Cloud-hosted environment by opening it in the browser or connecting to it from a client like Visual Studio Code. While connected, the environment is "active". If you disconnect, the environment can automatically move into a "suspended" state until you either connect to it again or delete it. The auto-suspend delay is configurable, or you can disable it if you want more control.

### If I create an environment, use it for 6 minutes, 45 seconds, then delete it, how much do I get billed? 

Time is measured in seconds, so you will be billed for 6 minutes and 45 seconds of active time in environment units. 

### Will I be billed for Cloud-hosted environments while I'm not using them? 

Yes, once created, an Cloud-hosted environment bills at the base rate until you delete it. 

### What are self-hosted environments?  

By default, Visual Studio Online provisions fully managed environments that run in Azure. These environments are backed by the full power of the cloud (always available, quick to create, scalable, etc). However, you may also register your own physical or virtualized environment to your Visual Studio Online Plan. This allows you to have some of the benefits of Visual Studio Online (e.g. use of the web-based editor) while leveraging your existing, potentially specialized, infrastructure.  

### Where can I report an issue with my billing?

Billing support is available online at [https://aka.ms/vso-billing-issues](https://aka.ms/vso-billing-issues).
