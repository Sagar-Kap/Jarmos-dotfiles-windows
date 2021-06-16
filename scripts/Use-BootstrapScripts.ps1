<#
.SYNOPSIS

Execute this script to install necessary software

.DESCRIPTION

This script uses the Windows Package Manager (or "winget") to install all the necessary software(s) for the system. Winget can export the list of already installed software in a JSON file for later use. This same JSON file is later used by Winget to install the software(s) in the new system.

For my use, I've exported the list of software in a "package.json" file. You can take a look at the file at: "https://github.com/Jarmos-san/dotfiles-windows/blob/master/configurations/winget/packages.json".

.EXAMPLE

PS> E:\Dotfiles\Scripts\Use-BootstrapScript

.NOTES

The exact design of the script is subject to change, so use at your own risk. But for more information refer to the following links:

https://github.com/Jarmos-san/dotfiles-windows
https://github.com/microsoft/winget-cli
#>

$Packages = Resolve-Path -Path "..\configurations\winget\packages.json"

Invoke-Expression -Command "winget import --import-file $Packages --ignore-unavailable"

# TODO: Script for installing the patched Fira Code Nerd Fonts

# TODO: Download software distributed as binaries & add them to $PATH
# ? More info are available at:
# * https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Archive/Expand-Archive?view=powershell-7.2
# * https://stackoverflow.com/questions/41895772/powershell-script-to-download-a-zip-file-and-unzip-it

# TODO: Cleanup system bloatware
