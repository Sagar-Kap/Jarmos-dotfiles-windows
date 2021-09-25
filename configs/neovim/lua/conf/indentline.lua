-- Config file for lukas-reineke/indent-blankline.nvim
-- For more info on customizing this plugin, refer to:
-- https://github.com/lukas-reineke/indent-blankline.nvim

local M = {}

function M.config()
    vim.g.indent_blankline_char = '▏'
    vim.g.indent_blankline_show_first_indent_level = false
    vim.g.indent_blankline_filetype_exclude = {
        'help', 'markdown', 'gitcommit', 'packer'
    }
    vim.g.indent_blankline_buftype_exclude = {
        'terminal', 'nofile',
    }
    -- TODO: Uncomment the following line after installing nvim-treesitter
    -- vim.g.indent_blankline_use_treesitter = true
end

return M
