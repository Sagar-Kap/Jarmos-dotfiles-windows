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
require('lspconfigs')
require('statusline')
require('keymaps')
require('autocomplete')
require('treesitter')

--[[
Use resources for future references:
- https://icyphox.sh/blog/nvim-lua/
- https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html
]]

-- Compe setup
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    nvim_lsp = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

