local M = {}

function M.config()
    -- TODO: Uncomment them after they're installed
    -- vim.cmd [[ packadd nvim-treesitter-refactor ]]
    -- vim.cmd [[ packadd nvim-treesitter-textobjects ]]

    require('nvim-treesitter.configs').setup {
        indent = { enable = true },
        highlight = { enable = true },
        incremental_selection = { enable = true, },
    }
end

return M
