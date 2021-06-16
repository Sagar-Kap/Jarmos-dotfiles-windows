<#
.SYNOPSIS

Downloads specific binaries from GitHub.

.DESCRIPTION

Executing this script will download the binaries for Hugo, Git, Starship & Neovim from GitHub. Additionally, re-executing the script will download the latest release of the aforementioned binaries.

Also, the binaries will be downloaded to the "C:\Tools" location. It'll be created if it doesn't exist yet.

.EXAMPLE

PS> E:\Dotfiles\Scripts\Download-Binaries

.NOTES

Before executing the script, do take at what it does on your system. You can find the source code at: https://github.com/Jarmos-san/dotfiles-windows

#>

# TODO: Write script to download binaries like Hugo, Git, etc & add them to $PATH

$Urls = @{
    "Hugo"     = "https://github.com/gohugoio/hugo";
    "Git"      = "https://github.com/git-for-windows/git";
    "Starship" = "https://github.com/starship/starship";
    "Neovim"   = "https://github.com/neovim/neovim";
}
