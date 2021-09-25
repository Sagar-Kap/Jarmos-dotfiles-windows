# Initiate Starship prompt for Git Bash
eval "$(starship init bash)"

# Configures Starship to use the %TEMP% directory for caching
export STARSHIP_CACHE="$TEMP"

# Path to the Starship configuration file
export STARSHIP_CONFIG="$USERPROFILE/.starship/starship.toml"
