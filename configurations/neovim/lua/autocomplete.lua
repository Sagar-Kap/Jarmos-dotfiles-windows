-- Module for configuring the "hrsh7th/nvim-compe" plugin

local compe = require('compe')

local api = vim.api
local fn = vim.fn

-- Nvim-Compe setup
compe.setup {
  debug = true;
  min_length = 3;
  preselect = 'enable';
  source = {
    path = true;
    nvim_lsp = true;
	nvim_lua = true;
	treesitter = true
  };
}

-- The variable "t" here is a n abbreviation of "termcodes"
-- It helps escape keycodes which are a special feature of
-- Neovim specifically. More info is available at:
-- https://github.com/nanotee/nvim-lua-guide#vimapinvim_replace_termcodes
local t = function(str)
  return api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = fn.col('.') - 1
    if col == 0 or fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end
