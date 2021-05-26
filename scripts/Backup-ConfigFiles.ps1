$RootDirectory = Resolve-Path -Path "..\dotfiles"
$WindowsPackages = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages"

$WTConfigurations = Resolve-Path -Path "$WindowsPackages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$WingetConfigurations = Resolve-Path -Path "$WindowsPackages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"
$StarshipConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"
$GitConfigurations = Resolve-Path -Path "$ENV:USERPROFILE\.git*"
$NeovimConfigurations = Resolve-Path -Path "$ENV:LOCALAPPDATA\nvim\*"

Write-Host "The config files will be copied to $RootDirectory..."

Write-Host "Copying configurations for Windows Terminal at: $WTConfigurations"
Copy-Item -Path $WTConfigurations -Destination "$RootDirectory\windows-terminal"

Write-Host "Copying configurations for Starship at: $StarshipConfigurations"
Copy-Item -Path $StarshipConfigurations -Destination "$RootDirectory\starship"

Write-Host "Copying configurations for Git at: $GitConfigurations" -Seperator ", "
Copy-Item -Path $GitConfigurations -Destination "$RootDirectory\git"

Write-Host "Copying configurations for Windows PowerShell at: $PROFILE"
Copy-Item -Path $PROFILE -Destination "$RootDirectory\windows-powershell"

Write-Host "Copying configurations for Neovim at: $NeovimConfigurations"
Copy-Item -Path $NeovimConfigurations -Recurse -Force -Destination "$RootDirectory\neovim"

Write-Host "Copying configurations for Winget at: $WingetConfigurations"
Copy-Item -Path $WingetConfigurations -Destination "$RootDirectory\winget"

Write-Host " "

Write-Host "All config files copied to local repository!"

Write-Host " "

Write-Host "Backing up the configurations to GitHub"
Invoke-Expression "git add $RootDirectory; git commit -am ':truck: Backup config files to GitHub'; git push"

Write-Host " "

Write-Host "Done!"
