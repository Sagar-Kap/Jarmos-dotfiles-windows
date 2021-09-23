# Neovim Configurations

[Neovim](https://neovim.io) is a fork of the original [Vim](https://www.vim.org). Check out the official wiki on [how to install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) for your preferred OS. For those of you who're using Windows 10, Neovim is available for download through [Chocolatey](https://chocolatey.org) and/or [Scoop](https://scoop.sh).

Using Chocolatey:

```powershell
choco install neovim -y
```

Using Scoop:

```powershell
scoop install neovim
```

If you're wondering why I favor Neovim over Vim, check out this article I wrote - [Vim or Neovim? Here's Why You Should Use the Latter](https://jarmos.netlify.app/posts/vim-vs-neovim/). And if you're just not in a mood to read yet another article about Neovim then here's a TLDR:

- Neovim is way more popular than Vim (subjective opinion?)
- It's way faster than it's OG Vim version
- The optional Lua scripting environment for users to ditch VimScript
- Extended & improved "standard libray"
- Sensible defaults available right out-of-the-box without requiring any configurations

So, if you're pretty convinced to start using Neovim now, keep reading ahead on how to configure your Neovim environment as well. But before that, you might want to check out [Jarvim](https://github.com/Jarmos-san/Jarvim) which helps you set up a Neovim environment by invoking just one single command! Further, it comes pre-packaged with additional "sensible defaults" & offers an IDE-like experience right within Neovim.

With Jarvim, you won't miss you favourite IDE nor will you have spend hours tinkering around with Vim configs!

## How to Configure Neovim with Lua

With Neovim v0.5 & above, the editor comes with improved support for configuring it using Lua. With this killer feature you know longer have to pull out your hair over the cryptic-looking VimL syntax. And the best of it all is, Lua is an optional environment & it's possible to keep your old VimScript configurations. Yet build on top it using Lua code instead.

If you need a primer on using Lua for Neovim, do refer to `:h lua.txt` and/or the [`nvim-lua-guide`](https://github.com/nanotee/nvim-lua-guide) repository for a comprehensive overview of the same.

Similar to Vim, Neovim is also configured through "`runtimepath` files", so for reference on the same, check out `:h runtimepath`. On Windows, the user config location is available at `%LOCALAPPDATA%\nvim`. So, you should place your configurations at `%LOCALAPPDATA%\nvim\init.lua`.

Also, while not a necessity, all Lua scripts should be placed inside a folder aptly named `lua`. These scripts are considered Lua modules & all scripts here is automatically "sourced". So, assuming there's a `settings.lua` script under the `lua` directory, you can call this script inside `init.lua` with the `require('settings')` syntax. For more information on the same, refer to the `:h lua-require` documentation.

TODO: Share my personal config file structure

With Lua, its not as painful as it used to be once upon a time to configure Vim. Now the experience is very akin to developing a software with some arbitrary programming language itself!

As usual, refer to `h: lua.txt` for more info on configuring Neovim with Lua instead of VimScript.

## My Neovim Configurations Explained

My personal Neovim configuration is very similar to what [Jarvim](https://github.com/Jarmos-san/Jarvim) offers. So, do check it out if you want a comprehensive explanation of everything! But in case you want a overview here's a TLDR:

TODO: Write a somewhat detailed TLDR about my personal Neovim configurations
