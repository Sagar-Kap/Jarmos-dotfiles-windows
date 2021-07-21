-- All Neovim keymappings are defined here in this file

-- Wrapper for easier & less verbose way of mapping keys
-- TODO: Refactor function to handle global keymaps as well.
-- For now only buffer-local keymaps work which can create
-- some weird issues. Check out the keymaps for navigating 
-- between split windows below.
local map = function(mode, key, value)
    vim.api.nvim_buf_set_keymap(0, mode, key, value, { noremap = true, silent = true })
end


-- Disabling the following keys helps to learn the Vim motions better & more efficiently
-- Disable Arrow keys
map("", "<UP>", "<NOP>")
map("", "<DOWN>", "<NOP>")
map("", "<LEFT>", "<NOP>")
map("", "<RIGHT>", "<NOP>")

-- Disables Arrow keys in Insert Mode as well
map("i", "<UP>", "<NOP>")
map("i", "<DOWN>", "<NOP>")
map("i", "<LEFT>", "<NOP>")
map("i", "<RIGHT>", "<NOP>")

-- Disable <ESC> when in Insert mode

-- Essential remaps for better quality-of-life
map("n", "H", "0")                  -- Press capital H to move to the start of a line
map("n", "L", "$")                  -- Press capital L to move to the end of a line

-- Keymaps for navigating around split windows
-- TODO: Create a wrapper function to handle global keymappings like the ones below.
-- The issue with the current map() function is it only handle buffer-local keymaps
-- which doesn't work as intended when working with split windows.
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })      -- Move cursor to one window left of the current one
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })      -- Move cursor to one window below of the current one
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })      -- Move cursor to one window above of the current one
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })      -- Move cursor to one window right of the current one

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })		-- Remap "jk" to <ESC> to quite out of Insert mode

-- Opens a File Explorer within Telescope
map("n", "<Leader>ff", ":Telescope find_files<CR>")
