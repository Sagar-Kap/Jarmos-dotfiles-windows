-- Aliases --
-- TODO: Reconsider moving all aliases into a Lua module instead.
-- That way they can be "required" across each specific file when necessary
local o = vim.o                         -- The variable "o" will now behave like ":set"
local wo = vim.wo                       -- The variable "wo" now behaves like ":setlocal" for window-local options
local bo = vim.bo                       -- The variable "bo" now behaves like ":setlocal" for buffer-local options
local go = vim.go                       -- The variable "go" now behaves like ":setglobal"
local cmd = vim.cmd                     -- "cmd" will behave like "<cmd>" now
local fn = vim.fn                       -- "fn" is an simpler function for calling Vim-specific functions

-- Options --
o.hlsearch = false                      -- Disables highlighting searched word/phrase(s)
o.ignorecase = true                     -- Ignore casing of the searched word(s)/phrase(s)
o.smartcase = true                      -- Ignore casing but look for casing when searching with capital letter(s)
o.scrolloff = 6                         -- Neovim will keep at least 6 lines while using Ctrl-d and/or Ctrl-u

-- Buffer-local Options --
bo.tabstop = 4                          -- Number of visual <Space> per <Tab>
bo.softtabstop = 4                      -- Need more info on what's it supposed to do
bo.expandtab = true                     -- In Insert mode places actual SPACE character when pressing <TAB>
bo.shiftwidth = 4                       -- Need more info on what's it supposed to do
bo.swapfile = false                     -- Disables creating Swapfile for Neovim
bo.undofile = false                     -- Disables creating Undofile while editing a file

-- Window-local Options --
wo.number = true                        -- Enables the number column on the left side of the editor
wo.relativenumber = true                -- Shows the cursor position relative the number column on the left
wo.numberwidth = 1                      -- Defines the size of the number column on the left
wo.wrap = false                         -- Disables text wrapping globally

-- Global Options --
go.backup = false                       -- Disables creating backup copy of the file before overwriting it
go.writebackup = false                  -- Neovim won't write backup copies of the edited file anymore
go.termguicolors = true                 -- Enables GUI colors from the terminal
go.visualbell = true                    -- Is supposed to enable some kind of error bells, need to research more on it
go.foldlevelstart = 0                   -- Opens Neovim buffers with all folds closed

-- Global Configurations related to plugins
vim.g.gruvbox_contrast_dark = "hard"    -- Increases the dark contrast of the Gruvbox colorscheme
vim.g.loaded_python_provider = 0        -- Disables loading Python 2
vim.g.loaded_ruby_provider = 0          -- Disables loading Ruby
vim.g.loaded_perl_provider = 0          -- Disables loading Perl

-- Miscellaneous Vim Commands --
-- Some VimScript syntax doesn't work natively using Lua yet.
-- There's some work-in-progress stuff, so check them out if interested.
-- For starters; Syntax Highlighting stuff can be tracked over here;
-- https://github.com/nanotee/nvim-lua-guide#defining-syntaxhighlights
-- Enables a retro colorscheme for use within Neovim
-- TODO: Use native Lua code configure colorscheme & highlighting concerns
cmd [[ colorscheme gruvbox ]]
-- Enables transparent background within Neovim
cmd [[ highlight Normal guibg=NONE ctermbg=NONE ]]
