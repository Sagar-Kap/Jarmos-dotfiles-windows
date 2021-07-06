<#
.SYNOPSIS

Execute this script to install updated already installed software & then update the exported `packages.json` file.

.DESCRIPTION

This script uses the Windows Package Manager (or "winget") to update all the installed software(s) for the system. Once all the installed software are updated, `winget` exports the info onto a serialized JSON file.

You can take a look at the file at: "https://github.com/Jarmos-san/dotfiles-windows/blob/master/configurations/winget/packages.json".

.EXAMPLE

PS> E:\Dotfiles\Scripts\Sync-WingetPackages

.NOTES

The exact design of the script is subject to change, so use at your own risk. But for more information refer to the following links:

https://github.com/Jarmos-san/dotfiles-windows
https://github.com/microsoft/winget-cli
#>

$Packages = Resolve-Path -Path "..\configurations\winget\packages.json"

Invoke-Expression -Command "winget upgrade --all"

Invoke-Expression -Command "winget export -o $Packages"
