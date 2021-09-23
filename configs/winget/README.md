# Windows Package Manager

With Windows 10 version 1809 & later, [`winget`][Winget] comes pre-installed. It can be used just like `chocolatey` and/or `scoop` for Windows machines. As of the last commit to this README, Winget just got it's v1.x release. So, it's under heavy testing & user-feedback. So, expect the contents of this repository to change rapidly.

More specifically, this directory contains all the required files for winget to operate properly. And as of now it contains `packages.json` & `settings.json`. More on them later but here's the gist; the former is used by Winget to parse & install the necessary software while the later is for configuring Winget itself.

## Setting Up Winget

Since, it comes pre-installed on Windows machines, there's no need to download anything. Just ensure you're running the Windows 10 version 1809 or over. You can do so by running the following code snippet in a Windows PowerShell session:

```powershell
(Get-ComputerInfo).WindowsVersion     # Mine returns 2009 as of 03-06-2021
```

Then check if Winget is installed properly or not by running:

```powershell
winget --info                         # Should output some information like;

# Windows Package Manager v1.0.11451
# Copyright (c) Microsoft Corporation. All rights reserved.

# Windows: Windows.Desktop v10.0.19042.928
# Package: Microsoft.DesktopAppInstaller v1.11.11451.0

# Logs: %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir

# Links
# --------------------------------------------------------
# Privacy Statement   https://aka.ms/winget-privacy
# Licence Agreement   https://aka.ms/winget-license
# Third Party Notices https://aka.ms/winget-3rdPartyNotice
# Homepage            https://aka.ms/winget
```

If everything's good as expected till now, then congrats you got Winget installed on your system!

## Configure Winget for Your System

With Winget installed, it's now time to configure it properly. This is where the previously mentioned `settings.json` file come in. This file should be placed under `%LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState`. And what the contents of the `settings.json` file should be, is available at: [Winget CLI Settings][Winget ClI Settings]. So, do check it out & configure it with your personal requirements.

But in case you need some guidance on how to configure it, you can take a look at [how I did it](./settings.json).

So, if my Winget settings suit your needs, you can configure it real quick with the following PowerShell commands;

```powershell
# Your local Winget configurations
$LocalWingetConfig = Resolve-Path -Path "$ENV:LOCALAPPDATA\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"

# My Winget configurations
$RemoteWingetConfig = "https://raw.githubusercontent.com/Jarmos-san/dotfiles-windows/master/configurations/winget/settings.json"

# Copy my Winget configurations to your local Winget settings
Set-Content -Path $LocalWingetConfig -Value (Invoke-WebRequest -Uri $RemoteWingetConfig).Content
```

And that should be it! Now go ahead & install whatever software you need with the awesome package manager!

## Some Useful Winget Commands/Options

Winget is basically a CLI tool, hence it comes with a couple of handy _commands_ & "_options_" you can pass to the tool. You can find the whole list of available commands & options by running;

```powershell
winget --help

# Windows Package Manager v1.0.11451
# Copyright (c) Microsoft Corporation. All rights reserved.

# The winget command line utility enables installing applications and other packages from the command line.

# usage: winget [<command>] [<options>]

# The following commands are available:
#   install    Installs the given package
#   show       Shows information about a package
#   source     Manage sources of packages
#   search     Find and show basic info of packages
#   list       Display installed packages
#   upgrade    Upgrades the given package
#   uninstall  Uninstalls the given package
#   hash       Helper to hash installer files
#   validate   Validates a manifest file
#   settings   Open settings
#   features   Shows the status of experimental features
#   export     Exports a list of the installed packages
#   import     Installs all the packages in a file

# For more details on a specific command, pass it the help argument. [-?]

# The following options are available:
#   -v,--version  Display the version of the tool
#   --info        Display general info of the tool

# More help can be found at: https://aka.ms/winget-command-help
```

And as you can see there's also an official help documentation if you need further information on a specific command/option. So, do check it out!

But, two easily overlooked feature of Winget are the `export` & `import` command.

Remember the `packages.json` file mentioned earlier? It was generated using the `export` command. So, running the command below will generate a JSON file for you which Winget can later use to install those software.

```powershell
# Include the "--include-versions" option if you want to pin
# the software you use to specific versions.
winget export --output <PATH-TO-THE-FILE>

# How I do it:
# winget export --output E:\Projects\dotfiles\configurations\winget\packages.json
```

Do note, it doesn't always export all the software in your system. So, you might've to edit & include some of the missing software in the `packages.json` file.

With the `packages.json` file exported, you can port it to some other Windows 10 machine. And run the `winget import --import-file <PATH-TO-THE-FILE>` command to install all the software at one go.

And with all these knowledge, you can go ahead & configure Winget as per your requirements! So, what're you waitin for?! Go ahead & install some software. But if you need some help, don't forget to check out their [official repository][Winget Repo] or the [official documentations][Winget].

<!-- Reference Links -->
[Winget Repo]: https://github.com/microsoft/winget-cli
[Winget]: https://docs.microsoft.com/en-us/windows/package-manager/
[Winget CLI Settings]: https://aka.ms/winget-settings
