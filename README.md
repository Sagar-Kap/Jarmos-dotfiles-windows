# Dotfiles (supposed) for My Windows Development Environments

![GitHub repo size](https://img.shields.io/github/repo-size/Jarmos-san/dotfiles-windows?label=Repository%20Size&logo=github&style=flat-square) ![GitHub repo file count](https://img.shields.io/github/directory-file-count/Jarmos-san/dotfiles-windows?label=%23%20of%20Files&logo=github&style=flat-square) ![GitHub](https://img.shields.io/github/license/Jarmos-san/dotfiles-windows?label=Licensed%20Under&logo=github&style=flat-square) ![Twitter Follow](https://img.shields.io/twitter/follow/Jarmosan?style=social)

This directory holds all the scripts, config files & among other useful stuff I use on a daily basis. I use these are stuff to setup my development environment on a Windows machine. And as of the latest commit, the directory contains configurations for the software(s) and other stuff like font(s) & scripts for automation.

Following is a list of everything you can find in this repo:

**Software Development needs**:

- [Git][Git]
- [Windows Terminal][Windows Terminal]
- [Neovim][Neovim]
- [Visual Studio Code][VSCode]
- [Python Programming Language][Python]
- [NodeJS][NodeJS]
- [MongoDB][MongoDB] (can't automate it's installation because of this: [Winget Issue #874][Winget Issue #874])
- [GNU Privacy Guard][GPG]
- [Poetry][Python-Poetry]
<!-- - [Docker][Docker] -->

**Miscellaneous software** (can't be configured progamatically):

- [Google Backup & Sync][Google Backup & Sync] (Google Drive for the desktop)
- [Steam][Steam]
- [Transmission Bittorent Client][Transmission]
- [VLC Media Player][VLC]
- [ShareX][ShareX]
- [Mozilla Thunderbird][Mozilla Thunderbird]

**Others**:

- [Fira Code Nerd Font][Fira Code Nerd Font] (patched Nerd Fonts with programming ligatures)
- [Windows Package Manager CLI][Winget] (winget)
- [Scoop - An alternative & mature package manager for Windows][Scoop]

## Setup Instructions

TODO: Write a bootstrap script to install all the necessities & so on.

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
[Mozilla Thunderbird]: https://www.thunderbird.net/en-US/
[Python-Poetry]: https://github.com/python-poetry/poetry
[Scoop]: https://scoop.sh/
