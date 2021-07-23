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

# TODO: Use Scoop to install Fira Code NF
# Need to add the bucket to the system first downloading a font using Scoop.
# More info on how to do so is available at https://github.com/matthewjberger/scoop-nerd-fonts

# Will be using it till WinGet is mature & is capable enough to install much more software
Write-Host "Installing Scoop Package Manager"

# Installs Scoop package manager.
Invoke-WebRequest -Uri "https://get.scoop.sh" | Invoke-Expression

Write-Host "Installing software not available through WinGet"

# Scoop makes it easier to install some software which are generally distributed through binaries
Invoke-Expression -Command "scoop install neovim less bat mingit hugo starship"

# TODO: Cleanup system bloatware
