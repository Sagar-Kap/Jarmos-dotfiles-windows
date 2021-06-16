<#
.SYNOPSIS

Backup all the config files (or dotfiles) to the local & remote repository.

.DESCRIPTION

This script does a backup of the configurations (or dotfiles as they're commonly known as). It copies all the dotfiles like ".gitconfig", ".vimrc (or init.vim for Neovim)" & so on to the local repository & the remote repository.

The backup is done locally first i.e to the local repository first & then they're pushed to the remote repository for version-control. So, ensure to fork this repository before locally cloning the forked repository.

.EXAMPLE

PS> E:\Dotfiles\Scripts\Backup-ConfigFiles

.NOTES

Know what & how-to use these script at: https://github.com/Jarmos-san/dotfiles-windows before using them locally.
#>

$RootDirectory = Resolve-Path -Path "..\dotfiles\configurations"

$WTConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$WingetConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"
$StarshipConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"
$GitConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.git*"
$NeovimConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\nvim\*"

Write-Host "The config files will be copied to $RootDirectory..." -ForegroundColor DarkMagenta

Write-Host "Copying configurations for Windows Terminal at: $WTConfigurations" -ForegroundColor Cyan
Copy-Item -Path $WTConfigurations -Destination "$RootDirectory\windows-terminal"

Write-Host "Copying configurations for Starship at: $StarshipConfigurations" -ForegroundColor Cyan
Copy-Item -Path $StarshipConfigurations -Destination "$RootDirectory\starship"

Write-Host "Copying configurations for Git at: $GitConfigurations" -ForegroundColor Cyan
Copy-Item -Path $GitConfigurations -Destination "$RootDirectory\git"

Write-Host "Copying configurations for Windows PowerShell at: $PROFILE" -ForegroundColor Cyan
Copy-Item -Path $PROFILE -Destination "$RootDirectory\windows-powershell"

Write-Host "Copying configurations for Neovim at: $NeovimConfigurations" -ForegroundColor Cyan
Copy-Item -Path $NeovimConfigurations -Recurse -Force -Destination "$RootDirectory\neovim"

Write-Host "Copying configurations for Winget at: $WingetConfigurations" -ForegroundColor Cyan
Copy-Item -Path $WingetConfigurations -Destination "$RootDirectory\winget"

Write-Host " "

Write-Host "All config files copied to local repository!" -ForegroundColor DarkMagenta

Write-Host " "

Write-Host "Backing up the configurations to GitHub" -ForegroundColor DarkMagenta
Invoke-Expression "git add $RootDirectory; git commit -am ':truck: Backup config files to GitHub'; git push"

Write-Host " "

Write-Host "Done!" -ForegroundColor DarkMagenta

# TODO: Refactor the script
#* Resources are available at:
# https://adamtheautomator.com/powershell-foreach/
# https://arcanecode.com/2020/12/14/iterate-over-a-hashtable-in-powershell/
# https://4sysops.com/archives/read-all-items-in-a-powershell-hash-table-with-a-loop/
# https://www.red-gate.com/simple-talk/sysadmin/powershell/powershell-one-liners-collections-hashtables-arrays-and-strings

#* How to Refactor?
# - Create a hashtable with the name of the software as the "key" & it's path to the config file as the "value".
# - Pipe the hashtable through a ForEach-Object cmdlet. The ForEach-Object cmdlet should iterate through the hastable.
