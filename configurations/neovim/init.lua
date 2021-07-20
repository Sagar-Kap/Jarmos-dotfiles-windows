--[[
Yes, this is how I configure my Neovim environment! More info right below:

First off, yes it might look confusing & weird but that's also the beauty of
configuring Neovim with Lua. Compared to .vimrc/init.vim, you can modularize
your init.vim pretty easily.

So, you should write your Lua config files within a "./lua" directory & import
those files into your "init.vim file. For example, if all your configurations
were written in a "./lua/settings.lua" file, you should import it into your
"./init.lua". Importing in Lua is pretty similar to pre-ES6 syntax.

And don't forget to source your "init.lua" file after editing it.

For more info, refer to https://github.com/nanotee/nvim-lua-guide
]]

require('settings')
require('plugins')
require('lsp_config')
require('statusline')
require('keymaps')

--[[
Use resources for future references:
- https://icyphox.sh/blog/nvim-lua/
- https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html
]]
