$RootDirectory = Resolve-Path "../dotfiles"

Write-Host " "

Write-Host "Copying config files for the following files to $RootDirectory..."
Write-Host "    --> Windows Terminal"
Copy-Item -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" `
    -Destination "$RootDirectory\windows-terminal"

Write-Host "    --> Starship"
Copy-Item -Path "$ENV:USERPROFILE\.starship\starship.toml" -Destination "$RootDirectory\starship"

Write-Host "    --> Git"
Copy-Item -Path "$ENV:USERPROFILE\.git*" -Destination "$RootDirectory\git"

Write-Host "    --> Windows PowerShell"
Copy-Item -Path $PROFILE -Destination "$RootDirectory\windows-powershell"

Write-Host "    --> Neovim"
Copy-Item -Path "$ENV:LOCALAPPDATA\nvim\*" -Recurse -Force -Destination "$RootDirectory\neovim"

Write-Host " "

Write-Host "All config files copied to local repository!"

Write-Host " "

Write-Host "Backing up the configurations to GitHub"
Invoke-Expression "git add $RootDirectory; git commit -am ':truck: Backup config files to GitHub'; git push"

Write-Host " "

Write-Host "Done!"
