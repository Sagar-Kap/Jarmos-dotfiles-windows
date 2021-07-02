# Loads the starship prompt in PowerShell
Invoke-Expression (&starship init powershell)

# Configures Starship to use the %TEMP% directory for caching
$ENV:STARSHIP_CACHE = Resolve-Path -Path $ENV:TEMP

# Path to the Starship configuration file
$ENV:STARSHIP_CONFIG = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"

# Environment Variable for easier access to the Neovim config file
$ENV:MYVIMRC = Resolve-Path -Path "$ENV:LOCALAPPDATA\nvim\init.vim"
