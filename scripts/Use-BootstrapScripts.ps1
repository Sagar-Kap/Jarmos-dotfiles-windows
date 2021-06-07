# Script to install necessary software


$Packages = Resolve-Path -Path "..\configurations\winget\packages.json"

Invoke-Expression -Command "winget import --import-file $Packages --ignore-unavailable"

# TODO: Script for installing the patched Fira Code Nerd Fonts

# TODO: Download software distributed as binaries & add them to $PATH
# ? More info are available at:
# * https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Archive/Expand-Archive?view=powershell-7.2
# * https://stackoverflow.com/questions/41895772/powershell-script-to-download-a-zip-file-and-unzip-it

# TODO: Cleanup system bloatware
