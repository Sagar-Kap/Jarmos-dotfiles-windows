# Backup all config files to Version Control.

# Copy config files of the following software to the local "dotfiles" repository.
# - Windows Terminal (%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json)
# - Starship (%USERPROFILE%\.starship\starship.toml)
# - Git (%USERPROFILE%\{.gitconfig,.gitattributes,.gitignore})
# - Windows PowerShell (%HOME%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1)
# - Neovim (%LOCALAPPDATA%\{nvim,nvim-data})

Write-Host "Copying Windows Terminal configurations to local repository..."
Copy-Item -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" `
    -Destination "..\windows-terminal"

Write-Host "Copying Starship configurations to local repository..."
Copy-Item -Path "$ENV:USERPROFILE\.starship\starship.toml" -Destination "..\starship"

Write-Host "Copying Git configurations to local repository..."
Copy-Item -Path "$ENV:USERPROFILE\.gitconfig" "$ENV:USERPROFILE\.gitattributes" "$ENV:USERPROFILE\.gitignore" `
    -Destination "..\git"

Write-Host "Copying Windows PowerShell configurations to local repository..."
Copy-Item -Path "$ENV:HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Destination "..\windows-pwoershell"

Write-Host "Copying Neovim configurations to local repository..."
Copy-Item -Path "$ENV:LOCALAPPDATA\nvim" -Destination "..\neovim"

Write-Host "All config files copied to local repository!"

Write-Host "Backing up the configurations to GitHub"
git add .
# git 
