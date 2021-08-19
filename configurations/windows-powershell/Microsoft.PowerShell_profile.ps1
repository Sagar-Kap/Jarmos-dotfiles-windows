# Loads the starship prompt in PowerShell
starship init powershell --print-full-init | Out-String | Invoke-Expression

# Configures Starship to use the %TEMP% directory for caching
$ENV:STARSHIP_CACHE = Resolve-Path -Path $ENV:TEMP

# Path to the Starship configuration file
$ENV:STARSHIP_CONFIG = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"
