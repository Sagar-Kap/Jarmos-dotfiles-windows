# Dotfiles (supposed) for My Windows Development Environments

This directory holds all the scripts, config files & among other stuff. These are stuff which are required to setup my development environment on a Windows machine. As of the latest commit, the directory contains configurations for the following software(s) among other stuff like font(s) & scripts for automatic installations.

**Software Development needs**:

- [Git][Git]
- [Windows Terminal][Windows Terminal]
- [Neovim][Neovim]
- [Visual Studio Code][VSCode]
- [Python Programming Language][Python]
- [NodeJS][NodeJS]
- [MongoDB][MongoDB] (can't automate it's installation because of this: [Winget Issue #874][Winget Issue #874])
- [GNU Privacy Guard][GPG]
<!-- - [Docker][Docker] -->

**Miscellaneous software** (can't be configured progamatically):

- [Google Backup & Sync][Google Backup & Sync] (Google Drive for the desktop)
- [Steam][Steam]
- [Transmission Bittorent Client][Transmission]
- [VLC Media Player][VLC]
- [ShareX][ShareX]

**Others**:

- [Fira Code Nerd Font][Fira Code Nerd Font] (patched Nerd Fonts with programming ligatures)
- [Windows Package Manager CLI][Winget] (winget)

## Setup Instructions

As of right now, you'll need to install each group of stuff through seperate scripts (_I plan on automating them at some point of time_). So, to install the [Fira Code Nerd Font][Fira Code Nerd Font], execute the `.\Dotfiles\Windows\Install-Font` script.

**DO NOTE:** The `Install-Font.ps1` script is still work-in-progress. **DO NOT use it yet!**

As for the rest of the software, execute the `.\Dotfiles\Windows\Instal-Software` script. You can find more information on what each of those software does.

**DO NOTE:** The `Install-Software.ps1` script is still work-in-progress & is subject to change, but can be used. So, before executing it, its **RECOMMENDED** you read through it first.

## Configuration Files

You can find some of the configurations I use in the list below. Don note, each of the folders containing the config files has an accompanying `README` with further instructions to follow. So, do read them thoroughly before copying any of the configurations;

- [Windows Terminal](./configurations/windows-terminal)
- [Windows PowerShell](./configurations/windows-powershell)
- [Neovim](./configurations/neovim)
- [Git](./configurations/git)
- [Starship](./configurations/starship)
- [Winget](./configurations/winget)

<!-- Reference Links -->
[Windows Terminal]: https://github.com/microsoft/terminal
[Neovim]: https://neovim.io/
[Fira Code Nerd Font]: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode
[Steam]: https://store.steampowered.com/
[VSCode]: https://code.visualstudio.com/
[Transmission]: https://transmissionbt.com/
[VLC]: https://www.videolan.org/
[Python]: https://www.python.org/
[ShareX]: https://getsharex.com/
[Google Backup & Sync]: https://www.google.com/drive/download/
[Docker]: https://www.docker.com/
[Git]: https://git-scm.com/
[NodeJS]: https://nodejs.org/en/
[Winget]: https://github.com/microsoft/winget-cli
[MongoDB]: https://www.mongodb.com/
[Winget Issue #874]: https://github.com/microsoft/winget-cli/issues/874
[GPG]: https://gnupg.org/
