-- All Neovim keymappings are defined here in this file

local api = vim.api

-- Wrapper for easier & less verbose way of mapping keys
-- TODO: Refactor function to handle global keymaps as well.
--! NOTE: The "map" function right now only maps keys for the
--! first buffer which is why mappings for navigating around
--! windows doesn't work as aspected
local map = function(mode, key, value)
    api.nvim_buf_set_keymap(0, mode, key, value, { noremap = true, silent = true })
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

-- Essential remaps for better quality-of-life
map("n", "H", "0")                                              -- Press capital H to move to the start of a line
map("n", "L", "$")                                              -- Press capital L to move to the end of a line
map("n", "Y", "y$")						-- Press "y" (capital y) to yank a line

-- Keymaps for navigating around split windows
-- TODO: Create a wrapper function to handle global keymappings like the ones below.
-- The issue with the current map() function is it only handle buffer-local keymaps
-- which doesn't work as intended when working with split windows.
api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })      -- Move cursor to one window left of the current one
api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })      -- Move cursor to one window below of the current one
api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })      -- Move cursor to one window above of the current one
api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })      -- Move cursor to one window right of the current one

api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })		-- Remap "jk" to <ESC> to quite out of Insert mode

-- Telescope mappings
map("n", "<Leader>ff", ":Telescope find_files<CR>")                             -- Opens a File Explorer within Telescope
map("n", "<Leader>fb", ":Telescope buffers<CR>")				-- Telescope shows a list of available buffers
map("n", "<Leader>fe", ":Telescope file_browser<CR>")				-- Telescope shows a list of available files & directories in the current working directory

-- NOTE: It's best to disable the "<ESC>" at the end else you
-- would've no way to change modes after a Insert mode session.
-- Disable <ESC> when in Insert mode
map("i", "<ESC>", "<NOP>")
