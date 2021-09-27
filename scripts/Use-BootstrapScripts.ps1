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

# Will be using it till WinGet is mature & is capable enough to install much more software
Write-Host "Installing Scoop Package Manager"
Invoke-WebRequest -Uri "https://get.scoop.sh" | Invoke-Expression

Write-Host "Installing software not available through WinGet"

# Install aria2 first so that the downloads afterwards are much faster
Invoke-Expression -Command "scoop install aria2"

# Scoop makes it easier to install some software which are generally distributed through binaries
Invoke-Expression -Command "scoop install neovim less bat hugo starship delta glow llvm"

# Add Scoop buckets to install additional software
Invoke-Expression -Command "scoop bucket add nerd-fonts"

Write-Host "Installing Fira Code NF"
Invoke-Expression -Command "scoop install firacode"

Write-Host "Installing `"pipx`" `- A tool for installing Python CLI tools!"
Invoke-Expression -Command "py -m pip install --upgrade pipx"

Write-Host "Installing `"yarn`" `- An alternate package manager for frontend projects!"
Invoke-Expression -Command "npm install --global yarn"

# TODO: Cleanup system bloatware

# TODO: Enable WSL2 on the system
# NOTE: The system requires a restart after enabling WSL2. So, I still need to figure a way to install
# Ubuntu through this script

# Download dotfiles & restore them to their respective config locations
# TODO: Save location is hard-coded, it might be better to ask for user feedback & store that value to
# a variable instead
Write-Host "Downloading dotfiles!"
Invoke-Expression -Command "git clone git@github.com:Jarmos-san/dotfiles-windows.git E:\Projects\dotfiles"

