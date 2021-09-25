# Git Bash Configurations

Windows users as painful as it is to admit, has to use [Git for
Windows](https://gitforwindows.org) to access a suitable Bash environment.
Although there's the Windows Subsystem for Linux (WSL) alternative for 
those who're inclined to use it. Anyway if for whatever reason, WSL doesn't work
out for you, Git Bash is the way to go foreward.

This repository contains the very minimal Bash customizations I use. It's kept
minimal with the reason being me not using it at all for pretty much anything.

## How to Configure Git Bash

Pretty much like OG Bash on Linux machines, Git Bash can be configured through a
`.bashrc` file as well. This file needs to be present under the `%USERPROFILE%`
location.

So, to set it up for yourself, follow these steps:

1. Create a `.bashrc` file using the command `ni $env:userprofile\.bashrc`.
2. Open up Git Bash on [Windows Terminal](../windows-terminal).
3. It should automatically generate a couple other files like `.bash_profile` &
   `.bash_history` for you.
4. Import your Linux CLI aliases to either a `.aliases` file or in the `.bashrc`
   file.

**NOTE**: The `.bashrc`, `.bash_profile`, `bash_history` and/or `aliases` files
should all be present under the `%USERPROFILE` directory.

## My Git Bash Configurations

I rarely use Git Bash which is why my Bash config files are minimal as well. But
who knows if'll stay that way ever. But until that day comes, I'm happy with a
very minimal Git Bash configuration.

That said, here's what the config does for now:

```bash
# Loads the starship prompt on Bash
eval "$(starship init bash)"

# Configures Starship to use the %TEMP% directory for caching
export STARSHIP_CACHE="$TEMP"

# Path to the Starship configuration file
export STARSHIP_CONFIG="$USERPROFILE/.starship/starship.toml"
```
