# Bat: A cat(1) Clone with Wings

Bat is a command-line tool like `cat` but with superpowers like Syntax Highlighting, Paging, Git integration & much more!

And this is what it looks like on my Windows Terminal session;

![Jarmos's bat environment](../../assets/bat.gif)

If you think this is something useful for your as well, download it using either:

Chocolatey:

```console
choco install bat
```

Scoop:

```console
scoop install bat
```

Or download the binary from it's official [releases page](https://github.com/sharkdp/bat/releases/latest). Then do ensure the binary is available on `$PATH`.

**NOTE**: `bat` relies on `less` for syntax highlighting support among a couple other features. By default, Windows has support for a very hack'ey version of `more` which isn't good at all. So, do ensure you've the [`less` binary](https://github.com/jftuga/less-Windows) downloaded. But the recommended way to get `less` on Windows is either through Chocolatey/Scoop. So, the command `scoop install less` should do the trick & make `less` available on `$PATH` without any hassle either.

## Configuring Bat

Configuring `bat` is fairly straightforward & you can store the configs in a plain-text file aptly named `config`. The file should be localted at `%APPDATA%\bat` by default. And if you can't figure out where this file was generated, then run the `bat --config-file` to display the location to `stdout`. For more info about configuring check out the [official docs](https://github.com/sharkdp/bat#customization).
