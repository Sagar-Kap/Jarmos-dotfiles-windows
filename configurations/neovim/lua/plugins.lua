local execute = vim.api.nvim_command
local fn = vim.fn

-- "packer.nvim" installation path
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Ensure "packer.nvim" is installed, if not install it before anything else
-- when Neovim starts for the first time
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Install plugins using "packer.nvim" over here
return require('packer').startup(function(use)
  -- Include whichever plugins her following this format:
  -- use the "<repo>/<plugin-name>" format to install them
  -- More info is available in the official repository at:
  -- https://github.com/wbthomason/packer.nvim#quickstart
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {"neovim/nvim-lspconfig"}
  use {"itchyny/lightline.vim"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
        {'nvim-lua/popup.nvim'}, 
        {'nvim-lua/plenary.nvim'}
    }
}
end)
