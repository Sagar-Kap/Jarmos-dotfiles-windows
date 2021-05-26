# My Windows Terminal Configuration

The new [Windows Terminal][Windows Terminal] is a GPU-accelerated terminal emulator for Windows 10 users. If you develop on Windows & haven't used it yet, then drop whatever you're working at the moment & check it out!

It's on par with it's Unix-environment variants like Alacritty and/or GNOME Terminal (_maybe even better_). So, definitely use it.

That said, this directory holds the configuration files for my Windows Terminal. If you want a little sneak peek into what it looks like, here's a GIF for you.

<!-- TODO -->
(Insert GIF of Windows Terminal)

Windows Terminal is configured through a `jsonc` file which is basically a JSON with Comments file. It's located at: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

And finally, if you need more help setting up **YOUR** Windows Terminal, check out the official [microsoft/terminal][Windows Terminal] repository. Or reach out to me personally for a chat! :beaming_face_with_smiling_eyes:

## Tools Used for Further Customization

Configuring Windows Terminal just through it's `settings.json` file is very limiting. Hence, here are the some extra tools I use.

- [Starship][Starship]: To customize the shell prompt.
- [Fira Code Nerd Font][Fira Code NF]: For custom font with programming ligatures.

## Additional Helpful Resources

- [How to make a pretty prompt in Windows Terminal with Powerline, Nerd Fonts, Cascadia Code, WSL, and oh-my-posh][Scott Hanselman's Windows Terminal]
- [What is Windows Terminal][What is Windows Terminal]
- [Kayla Cinnamon - Microsoft Devblogs][Kayla Cinnamon]

If you think I've might've missed out on a resource you found helpful, open a PR with a link to the resource then.

<!-- Reference links -->
[Starship]: https://starship.rs/
[Fira Code NF]: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode
[Windows Terminal]: https://github.com/microsoft/terminal
[What is Windows Terminal]: https://docs.microsoft.com/en-us/windows/terminal/
[Kayla Cinnamon]: https://devblogs.microsoft.com/commandline/author/cinnamonmicrosoft-com/
[Scott Hanselman's Windows Terminal]: https://www.hanselman.com/blog/how-to-make-a-pretty-prompt-in-windows-terminal-with-powerline-nerd-fonts-cascadia-code-wsl-and-ohmyposh
