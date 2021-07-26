-- Module for configuring Neovim's Treesitter
-- More info is available at: https://github.com/nvim-treesitter/nvim-treesitter

local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    highlight = {
        enable = true
    },
    incremental_selection = {
        enable = true
    },
    indentation = {
        enable = true
    }
}
