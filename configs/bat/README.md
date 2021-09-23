# Bat: A cat(1) Clone with Wings

Bat is a command-line tool like `cat` but with superpowers like Syntax Highlighting, Paging, Git integration & much more!

And this is what it looks like on my Windows Terminal session;

![Jarmos's bat environment](../../assets/bat.gif)

If you think this is something useful for your as well, download it from it's official [releases page](https://github.com/sharkdp/bat/releases/latest).

## Configuring Bat

Bat can be easily configured using a config file which is aptly named `config`. You've to place this file under the `%APPDATA%\bat` directory. You can easily find what to include in this config by checking the output of `bat -h`. So, say, you want to use gruvbox-dark as your preferred theme, then add this line `--theme="gruvbox-dark"` to the `config` file.

**NOTE**: You'll require `less` on your local machine to enable paging. And also ensure it's available on `$PATH`. So, before using `bat` download `less` for Windows from it's [releases page](https://github.com/jftuga/less-Windows/releases/latest).
