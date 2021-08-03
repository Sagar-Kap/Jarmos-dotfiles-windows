-- Module for configuring Telescope plugin.
-- More info on this specific plugin can be found at:
-- https://github.com/nvim-telescope/nvim-telescope

local telescope = require("telescope")

-- Configure Telescope below
telescope.setup {
    defaults = {
	prompt_prefix = "->",				-- The prompt prefix
	file_ignore_patterns = {				-- File patterns Telescope should ignore. Add more of them as & when required
	    ".venv", "node_modules", ".next", ".git"
    	}
    }
}
