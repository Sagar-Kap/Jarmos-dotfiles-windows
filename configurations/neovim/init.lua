require('settings')
require('plugins')
require('statusline')
require('keymaps')
require('treesitter')
require('autocomplete')
require("telescope_config")

-----------------------------------------------------------------------------//
-- Keymappings {{{1
-----------------------------------------------------------------------------//
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set <Leader> to <Space>
vim.g.mapleader = ' '

-- Pressing two <Space> simulataneously switches between buffers
map('n', '<Leader><Leader>', ':b#<CR>')

-- Easier navigation between splits
map('n', '<C-j>', '<C-w>j', { noremap = false })
map('n', '<C-k>', '<C-w>k', { noremap = false })
map('n', '<C-h>', '<C-w>h', { noremap = false })
map('n', '<C-l>', '<C-w>l', { noremap = false })

-- Use "Alt = 'Vim Navigation'" to resize windows
map('n', '<M-j>', '<Cmd>resize -2<CR>')
map('n', '<M-k>', '<Cmd>resize +2<CR>')
map('n', '<M-h>', '<Cmd>vertical resize -2<CR>')
map('n', '<M-l>', '<Cmd>vertical resize +2<CR>')

-- Improved "quality of life" when navigating around a single line
map('n', 'H', '<Home>') -- Press H (capital) to move to the start of the line
map('n', 'L', '<End>') -- Press L (capital) to move to the end of the line
map('n', 'Y', 'y$') -- Press Y (capital) to copy the entire line

-- Navigating around while in "Insert" mode
map('i', '<C-j>', '<Down>')
map('i', '<C-k>', '<Up>')
map('i', '<C-h>', '<Left>')
map('i', '<C-l>', '<Right>')

-- Better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move selected line(s) in Visual mode
-- Refer to this line of code here at:
-- https://github.com/disrupted/dotfiles/blob/6afc3296513d9765c8295436c8e4f72148c3a663/.config/nvim/init.lua#L660

-- Press "Ctrl + a" to select everything in a buffer
map('n', '<C-a>', '<Esc>ggVG<CR>')

-- Some sensible defaults
map('', 'Q', '') -- Disable Ex mode as I can't think of any ways to use it
map('n', 'x', '"_x') -- Delete characters w/o yanking it
map('x', 'x', '"_x') -- Delete visual selection w/o yanking

-- Edit & source the "init.lua" file more intuitively
map('n', ',v', ':edit $MYVIMRC<CR>')
map('n', ',s', ':luafile $MYVIMRC<CR>')

--[[
Use resources for future references:
- https://icyphox.sh/blog/nvim-lua/
- https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html
]]

