---
author: andster
ms.author: andster
ms.service: visual-studio-online
title: Configuring Windows Instance Types in Codespaces
ms.topic: overview
ms.date: 05/11/2020
---

# Configuring Windows Codespaces
> [!NOTE]
> We would love to hear you feedback on the customizations (such as applications, features and settings) that you need to be successful using a Windows Codespace environment. If you would like to provide feedback and take part in future customer research please complete this [survey]( https://www.research.net/r/WXGB6N5).

## Installed Software
The table below lists the applications and features available in all Windows Codespace environments. If further customizations are needed you can use the Visual Studio Terminal which is running PowerShell elevated under the local administrator account. To learn more about the Visual Studio terminal you can read this [blog](https://devblogs.microsoft.com/visualstudio/say-hello-to-the-new-visual-studio-terminal/).
|App     | Path Alias | Version
|----------------|------------|------------|
| Azure CLI | az | 2.5
| Windows SDK | N/A | 10..0.18362
| .NET | N/A | 4.8
| .NET Core Runtime |  dotnet | 3.17, 3.1.2, 3.1.3
| .NET Core SDK | dotnet | 3.17, 3.1.2, 3.1.3
| Node.js | node | 12.16
| NPM | npm | 6.14
| Python  | python | 3.7.7
| Chocolatey | choco | 0.10.15
| Git | git | 2.26
| Ninja | ninja | 1.8.2
| CMake | cmake | 3.17
| Microsoft build | msbuild | 16.7
| VC Package Manager | vcpkg | 2020.02
The list above is not exhaustive, and many other tools are included as part of Visual Studio (e.g. IISExpress).



## Microsoft SQL Server
Microsoft SQL Server 2019 Developer Edition is available and running as a local service (SQLServer) in Windows Environments. The currently logged in user, which your app and the VS terminal run as, have SQL administrator rights to the SQL server. To administer the server you will need to use the PowerShell terminal available in Visual Studio or other command line tools such as `dotnet tool ef`. Currently SQL Server Management Studio and other remote administration tools are not available.
Note: SQL Server Express Edition (localdb) is also available in all Windows environments.
### Example Connection String
The below is an example of a connection string to connect to the local MS SQL server.
```dotnet
"Server=localhost;Integrated Security=true;”
```

## Docker Desktop
Whole Docker Desktop is installed in all Windows please note, the docker tools for Visual Studio are currently not available in Codespaces.
## Azure CLI
The Azure CLI is installed in all Windows environments and is available on path as `az`.
### Using Azure Resources 
If you are using an Azure Active Directory (AAD) identity to authenticate your application against Azure resources, you will need to use first login to Azure from the Visual Studio terminal. To do this you will need to use the Azure CLI login command with the device login flow (as shown in the example below). Once logged in your application and terminal session should be able to use that identity.

```PowerShell
> az login --use-device-code
```
You can learn more on the `az login` command in the Azure CLI [documentation](https://docs.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest#az-login).
