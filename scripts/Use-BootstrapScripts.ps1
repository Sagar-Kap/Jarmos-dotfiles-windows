# Requires -RunAsAdministrator

<#
.SYNOPSIS

Execute this script to install necessary software & remove bloatware

.DESCRIPTION

This script is used for bootstrapping a brand new Windows machine for downloading necessary software & possibly removing bloatware from it.

It use the new Windows Package Manager (called "winget") & Scoop (which is also
downloaded programmatically) to install all necessary software for the system.
If you're wondering why install Scoop beside Winget as well? Then you're not
wrong to think about it that way either. Winget still has a long way to go &
it's repository still doesn't host every installable software. And to brige that
gap, Scoop is there to the rescue.

Winget allows the user to export all installed software (only those available in
it's repositories) onto a JSON file. This JSON file can then be used to
reinstall the software in another brand new machine. Feel free to take a look at
the JSON file I created for my use cases. It's available at:
https://github.com/Jarmos-san/dotfiles-windows/blob/master/configurations/winget/packages.json

.EXAMPLE

PS> E:\Dotfiles\Scripts\Use-BootstrapScript

.NOTES

The exact design of the script is subject to change, so use at your own risk. But for more information refer to the following links:

https://github.com/Jarmos-san/dotfiles-windows
https://github.com/microsoft/winget-cli
https://github.com/lukesampson/scoop
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

# Add Scoop buckets to install additional software
Invoke-Expression -Command "scoop bucket add nerd-fonts"

# TODO: Install Fonts

# TODO: Install additional Python & NPM tools like "pipx", "yarn", & so on.
# "pipx" will be used to download Python CLI tools like "poetry" & such.
# While "npm" will be used to download language servers for Neovim's LSP

# TODO: Cleanup system bloatware

# TODO: Enable WSL2 on the system
# NOTE: The system requires a restart after enabling WSL2. So, I still need to figure a way to install
# Ubuntu through this script
