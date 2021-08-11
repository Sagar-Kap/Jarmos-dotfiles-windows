local fn = vim.fn
local execute = vim.api.nvim_command

-- "packer.nvim" installation path
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Ensure "packer.nvim" is installed, if not install it before anything else
-- when Neovim starts for the first time
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute "packadd packer.nvim"
  execute "PackerSync"
end

-- Install plugins using "packer.nvim" over here
return require('packer').startup(function(use)
  -- More info is available in the official repository at:
  -- https://github.com/wbthomason/packer.nvim#quickstart
  use { -- Gruvbox colorscheme
    "npxbr/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
    }
  use { -- Lightline statusline
    "itchyny/lightline.vim"
  }
  use { -- Neovim Telescope for fuzzy-finding & file exploration
    "nvim-telescope/telescope.nvim",
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }
  use { -- Neovim Tressitter runtime for syntax highlighting & other stuff
    "nvim-treesitter/nvim-treesitter",
    branch = "0.5-compat",
    run = "TSUpdate"
  }
  use { -- CoC plugin for Autocompletion & Snippets support
    "neoclide/coc.nvim",
    branch = "release"
  }
  use { -- Plugin for Nerd Font based icons
    "kyazdani42/nvim-web-devicons"
  }
  use { -- Telescope extension: Cheatsheet.nvim
    "sudormrfbin/cheatsheet.nvim"
  }
  use { -- Telescope extension: Telescope-coc.nvim
    "fannheyward/telescope-coc.nvim"
  }
  use { -- Telescope extension: Telescope-heading.nvim for navigating around Markdown headings
    "crispgm/telescope-heading.nvim"
  }
  use { -- Plugin for visualising blankline characters like white-space, indents & so on
    "lukas-reineke//indent-blankline.nvim"
  }
end)
