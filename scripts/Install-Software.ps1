# Script to install necessary software

# TODO: Installation script for Starship Cross-Shell Prompt
#   More info are available at:
#       https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Archive/Expand-Archive?view=powershell-7.2
#       https://stackoverflow.com/questions/41895772/powershell-script-to-download-a-zip-file-and-unzip-it

# Check https://github.com/Jarmos-san/dotfiles-windows/blob/master/configurations/winget/packages.json for info on
# the list of software which will be installed
Invoke-Expression -Command "winget import --import-file ..\configurations\winget\packages.json --ignore-unavailable"
