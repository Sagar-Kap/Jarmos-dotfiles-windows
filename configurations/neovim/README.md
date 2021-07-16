# Neovim Configurations

[Neovim][Neovim] is a fork of the original [Vim][Vim]. If you are on an Unix-like system, chances are, it already comes pre-packaged with it.

But it's a different case with Windows users. While a GUI variant of Vim called GVim is available for Windows users, it's not as user-friendly as it is on Unix-like systems. And besides, Vim on Windows is way too buggy to be useful. Coupled with a buggy interface & unecessary configuration, it can be a bit of a struggle as well.

On a brighter note though, Neovim comes in as a viable alternative for Windows users. It's not as buggy as it's vanilla counterpart & comes pre-packaged with certain sensible default configuration settings as well. So, if you prefer  reading up more about it, the official documentations at [neovim.io](https://neovim.io) is a great place to start with.

But if you're already aware of Neovim & it's capabilities, and perhaps you're looking for some inspiration to configure your Neovim environment, this repo might benefit you in some ways.

But before you start with that, do note, Neovim can be configured with Lua right now. And since Neovim 0.5 which comes with an in-built Language Server Provider (LSP). The only caveat though, configuring LSP requires a bit of Lua scripting. With that in mind, you might notice I'm in the middle of migrating most of my Vim configurations from VimScript to LuaScript. Instead if you want to figure out how I had Neovim configured with VimScript, head over to [Jarmos-san/myvimconfig](https://github.com/Jarmos-san/myvimconfig). It's a backup of my older `init.vim` kept only for future reference.

## How to Configure Neovim with Lua

The best eye-catching feature of Neovim is it's embedded Lua scripting environment. You can call Lua code within VimScript with the `lua` keyword or write Lua code directly to configure Neovim. If you need more info on how to migrate from using VimScript to Lua, do check out `:h lua.txt` as a great starting point.

But briefly put, the `runtimepath` previously used within Neo(vim) hasn't changed. So, if you had scripts in there previously, they'll still work. Also, similar to `init.vim` you should leave an `init.lua` at it's usual place as well. So, for Windows users, you should leave the `init.lua` file at `%LOCALAPPDATA%\nvim`.

Additionally, while it's not a necessity, all Lua scripts should be placed inside a folder aptly named `lua`. These scripts are considered Lua modules & all scripts here is automatically "sourced". So, assuming there's a `settings.lua` script under the `lua` directory, you can call this script inside `init.lua` with the `require('settings')` syntax. For more information, refer to the `:h lua.txt` documentation.

That said, I've setup my Lua directory as follows:

```console
%LOCALAPPDATA%/
├─ nvim/
│  ├─ after/
│  │  ├─ ftplugin/
│  ├─ lua/
│  │  ├─ settings.lua
│  │  ├─ plugins.lua
│  │  ├─ lsp_config.lua
│  │  ├─ keymaps.lua
│  ├─ init.lua
```

## Plugins Used

I try to keep my `init.vim` file as minimal as possible, hence my list of plugins are quite limited too.

That said, following are the list of plugins I currently use with my Neovim setup:

- [PProvost/vim-ps1][Vim-PowerShell]
- [Neoclide/coc.nvim][CoC-Neovim]
- [itchyny/lightline][Lightline]
- [morhertz/gruvbox][Gruvbox]
- [preservim/nerdtree][NerdTree]

## Keymapping Used

TODO: Add & explain the keymapping used in my dev environment

<!-- Reference links -->
[Lightline]: https://github.com/itchyny/lightline.vim
[Gruvbox]: https://github.com/morhertz/gruvbox
[NerdTree]: https://github.com/preservim/nerdtree
[Vim-Markdown]: https://github.com/plasticboy/vim-markdown
[CoC-Neovim]: https://github.com/neoclide/coc.nvim
[Vim-PowerShell]: https://github.com/PProvost/vim-ps1
[Neovim]: http://neovim.io/
[Vim]: https://www.vim.org/
