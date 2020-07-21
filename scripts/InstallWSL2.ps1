# Copyright © Microsoft Corporation
# All rights reserved.

# This script is an example of how you can script the installation
# and first-run of a Linux distro (Ubuntu 18.04 in our case) for 
# use with WSL2 and Docker Desktop.

Import-Module BitsTransfer

# Install the required Kernel Update
$url = "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"
$output = ".\wsl_update_x64.msi"
Start-BitsTransfer -Source $url -Destination $output

Start-Process msiexec -ArgumentList "/i wsl_update_x64.msi /passive /l*v wsl_log.txt" -Wait

# Download the desired distro
$url = "https://aka.ms/wsl-ubuntu-1804"
$output = ".\ubuntu.appx"
Start-BitsTransfer -Source $url -Destination $output

# Expand it, and run the install, configuring the user as root
Rename-Item .\Ubuntu.appx .\Ubuntu.zip
Expand-Archive .\Ubuntu.zip .\Ubuntu
.\Ubuntu\ubuntu1804.exe install --root

# Set the required system variables to make sure it's picked up
$userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
$currentDir = (Get-Location).Path
[System.Environment]::SetEnvironmentVariable("PATH", $userenv + ";" + $currentDir + "\Ubuntu", "User")

# Make sure WSL upgrades the distro to version 2
wsl --set-version Ubuntu-18.04 2

# Restart the Docker Desktop Process and make sure we're using the Linux engine
(Get-Process -Name "Docker Desktop").Id | ForEach-Object { Kill -Id $_ }
& "C:\Program Files\Docker\Docker\DockerCli.exe" -SwitchLinuxEngine
Restart-Service *docker*
& 'C:\Program Files\Docker\Docker\Docker Desktop.exe'

# Just in case it was run, make sure we stop the distro too
wslconfig /t ubuntu-18.04