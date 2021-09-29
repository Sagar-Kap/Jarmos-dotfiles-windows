-- Config file for nvim-telescope, find more info at:
-- https://github.com/nvim-telescope/nvim-telescope

local M = {}

-- TODO: Customize nvim-telescope as required. Configuration instructions are
-- available at: https://github.com/nvim-telescope/nvim-telescope#customization
-- function M.setup()
-- end

function M.config()

    vim.cmd [[ packadd nvim-web-devicons ]]

    local actions = require('telescope.actions')
    local sorters = require('telescope.sorters')
    local previewers = require('telescope.previewers')

    require('telescope').setup {
        defaults = {
            prompt_prefix = '-> ',
            mappings = {
                i = {
                    ['<ESC>'] = actions.close,
                    ['<C-j>'] = actions.move_selection_next,
                    ['<C-k>'] = actions.move_selection_previous,
                },
                n = {
                    ['<ESC>'] = actions.close
                },
            },
            file_ignore_patterns = {
                'node_modules',
                '__pycache__',
                '.venv',
                '.next',
                'parsers',
                '.git',
           },
            color_devicons = true,
            winblend = 7,
        },
    }
end

return M
