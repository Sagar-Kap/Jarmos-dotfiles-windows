-- Module for CoC autocompletion plugin

-- Install these global extensions if they've not been installed already
vim.g.coc_global_extensions = {
    'coc-json', 'coc-tsserver', 'coc-markdownlint', 'coc-pyright',
    'coc-diagnostic', 'coc-eslint', 'coc-powershell', 'coc-prettier',
    'coc-snippets', 'coc-sumneko-lua', 'coc-toml', 'coc-yaml'
}

-- Configure directory to store CoC data & extensions
vim.g.coc_data_home = vim.fn.stdpath('data')..'/coc'
