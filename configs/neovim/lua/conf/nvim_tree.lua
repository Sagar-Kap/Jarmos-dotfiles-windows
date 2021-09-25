-- Config file for kyazdani/nvim-tree.lua
-- For more info refer to - https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.setup()
    -- TODO: Refactor, use keymap wrapper from utils module
    vim.api.nvim_set_keymap('n', '<C-b>', '<CMD>NvimTreeToggle<CR>', { noremap = true, silent =  true, })
end

function M.config()

    vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache', '__pycache__' }
    vim.g.nvim_tree_auto_open = 1       -- Default is 0 so setting it to 1 opens a File Explorer when nvim $DIR is run
    vim.g.nvim_tree_auto_close = 1      -- Default is 0. Closes tree when its the last window.
    vim.g.nvim_tree_width = 45          -- Default is 30
    vim.g.nvim_tree_quit_on_open = 1    -- Default is 0. Close the explorer when a file is opened
    vim.g.nvim_tree_hide_dotfiles = 0   -- Default is 1. Hides files whose names start with a "."

    -- File icon customizations
    vim.g.nvim_tree_icons = {
        default = ' ',
        symlink = ' ',
        git = {
            unstaged = '✗',
            staged = '✓',
            unmerged = '',
            renamed = '➜',
            untracked = '★',
        },
        folder = { default = '', open = '' },
    }

    -- Colorscheme concerns
    vim.cmd [[
        highlight link NvimTreeIndentMarker whitespace
        highlight link NvimTreeFolderIcon NonText
    ]]

    -- Lazy load NvimTree
    require('nvim-tree.events').on_nvim_tree_ready(function()
        vim.cmd 'NvimTreeRefresh'
    end)
end

return M
