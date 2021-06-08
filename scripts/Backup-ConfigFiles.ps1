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
