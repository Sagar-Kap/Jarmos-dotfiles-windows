local M = {}

local cmd = vim.cmd

-- Functional wrapper for creating AutoGroups
function M.create_augroup(autocmds, name)
    cmd('augroup ' .. name)
    cmd('autocmd!')
    for _, autocmd in ipairs(autocmds) do
        cmd('autocmd ' .. table.concat(autocmd, ' '))
    end
    cmd('augroup END')
end

-- Functional wrapper for mapping keys
local function map(mode, lhs, rhs, opts)
   local options = { noremap = true }
   if opts then
       options = vim.tbl_extend('force', options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Add the module to the Global env so that the utility functions of this
-- module is availabe everywhere in the configurations
_G.utils = M

return M
