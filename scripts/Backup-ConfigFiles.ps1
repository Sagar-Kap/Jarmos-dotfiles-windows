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

# Resolve path to the dotfiles directory
$RootDirectory = "E:\Projects\dotfiles"
$ConfigDirectory = Resolve-Path -Path "$RootDirectory\configs"

$WTConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$WingetConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"
$StarshipConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"
$GitConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.git*"
$NeovimConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\nvim\*"
$BatConfigurations = Resolve-Path -Path "$ENV:APPDATA\bat\config"

Write-Host "The config files will be copied to $ConfigDirectory...`n" -ForegroundColor DarkMagenta

Write-Host "Copying configurations for: `n" -ForegroundColor Cyan

Write-Host "--> Windows Terminal" -ForegroundColor Blue
Copy-Item -Path $WTConfigurations -Destination "$ConfigDirectory\windows-terminal"

Write-Host "--> Starship" -ForegroundColor Blue
Copy-Item -Path $StarshipConfigurations -Destination "$ConfigDirectory\starship"

Write-Host "--> Git" -ForegroundColor Blue
Copy-Item -Path $GitConfigurations -Destination "$ConfigDirectory\git"

Write-Host "--> Windows PowerShell" -ForegroundColor Blue
Copy-Item -Path $PROFILE -Destination "$ConfigDirectory\windows-powershell"

Write-Host "--> Neovim" -ForegroundColor Blue
Copy-Item -Path $NeovimConfigurations -Recurse -Force -Destination "$ConfigDirectory\neovim"

Write-Host "--> Winget CLI" -ForegroundColor Blue
Copy-Item -Path $WingetConfigurations -Destination "$ConfigDirectory\winget"

Write-Host "--> Bat: A `"cat`" with wings!`n" -ForegroundColor Blue
Copy-Item -Path $BatConfigurations -Destination "$ConfigDirectory\bat"

Write-Host "All config files copied to local repository! `n" -ForegroundColor DarkMagenta

# TODO: Refactor the Git backup section of the script to invoke "git" command from anywhere in the file system
# More info available at: http://antonkallenberg.com/2017/12/02/execute-a-git-command-in-multiple-folders-using-powershell
Write-Host "Backing up the configurations in $RootDirectory to GitHub" -ForegroundColor DarkMagenta
Write-Host "NOTE: Current directory will be changed to $RootDirectory `n" -ForegroundColor DarkRed
Set-Location -Path $RootDirectory
Invoke-Expression "git add $RootDirectory; git commit -am ':truck: Backup config files to GitHub'; git push"

Write-Host "`nDone!" -ForegroundColor Green

# TODO: Refactor the script
#* Resources are available at:
# https://adamtheautomator.com/powershell-foreach/
# https://arcanecode.com/2020/12/14/iterate-over-a-hashtable-in-powershell/
# https://4sysops.com/archives/read-all-items-in-a-powershell-hash-table-with-a-loop/
# https://www.red-gate.com/simple-talk/sysadmin/powershell/powershell-one-liners-collections-hashtables-arrays-and-strings

#* How to Refactor?
# - Create a hashtable with the name of the software as the "key" & it's path to the config file as the "value".
# - Pipe the hashtable through a ForEach-Object cmdlet. The ForEach-Object cmdlet should iterate through the hastable.
