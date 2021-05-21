RootDirectory = "E:\Projects\dotfiles"
Write-Host " "

Write-Host "Copying config files for the following files to local repository..."
Write-Host "    --> Windows Terminal"
Copy-Item -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" `
    -Destination "$RootDirectory\windows-terminal"

Write-Host "    --> Starship"
Copy-Item -Path "$ENV:USERPROFILE\.starship\starship.toml" -Destination "$RootDirectory\starship"

Write-Host "    --> Git"
Copy-Item -Path "$ENV:USERPROFILE\.gitconfig" -Destination "$RootDirectory\git"
Copy-Item -Path "$ENV:USERPROFILE\.gitattributes" -Destination "$RootDirectory\git"
Copy-Item -Path "$ENV:USERPROFILE\.gitignore" -Destination "$RootDirectory\git"

Write-Host "    --> Windows PowerShell"
Copy-Item -Path $PROFILE -Destination "$RootDirectory\windows-powershell"

Write-Host "    --> Neovim"
Copy-Item -Path "$ENV:LOCALAPPDATA\nvim" -Destination "$RootDirectory\neovim" -Recurse -Force

Write-Host " "

Write-Host "All config files copied to local repository!"

Write-Host " "

Write-Host "Backing up the configurations to GitHub"
Invoke-Expression "git add ..; git commit -am ':truck: Backup config files to GitHub'; git pu"

Write-Host " "

Write-Host "Done!"
