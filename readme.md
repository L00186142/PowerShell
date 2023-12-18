# PowerShell

This repository contains a set of PowerShell code and examples. Each section is designed to demonstrate specific tasks and functionalities in PowerShell scripting.

## Table of Contents

1. [Setting Execution Policy](#setting-execution-policy)
2. [Downloading and Installing PowerShell 7](#downloading-and-installing-powerShell-7)
3. [Custom PowerShell Module](#custom-powershell-module)

## Setting Execution Policy

```powershell
# Set the execution policy to RemoteSigned with Force flag to override restrictions
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
```
## Downloading and Installing PowerShell 7
The following commands will download and install PowerShell 7:

```powershell
# Download PowerShell 7 installation script
Set-Location C:\PowerShell
$URI = "https://aka.ms/install-powershell.ps1"
Invoke-RestMethod -Uri $URI | Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1

# Execute the installation script
C:\PowerShell\Install-PowerShell.ps1

```

## Custom PowerShell Module
We start by creating a custom module in PowerShell named 'HelloWorld' with a function:

```powershell
# Define the path for the custom PowerShell module
$MyModulePath = "C:\Path\To\Your\Module"

# Define the content of the custom PowerShell module
$MyModule = @"
# HelloWorld.PSM1
Function Get-HelloWorld {
    "Keep her Country!!"
}
"@

# Create the directory for the custom module
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null

# Save the custom module content to HelloWorld.PSM1
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1

# List the custom module as available
Get-Module -Name HelloWorld -ListAvailable

```