-- Module for configuring Neovim's native LSP --
-- The in-built LSP is configured through a plugin named: neovim/lspconfig
-- But each Language Servers has to be configured seperately.
-- For more information on how-to configure the individual language servers,
-- refer to the CONFIG.md file in the plugin's repo which is also available at:
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

local lspconfig = require('lspconfig')

-- Pyright Language Server for Python files
lspconfig.pyright.setup{}

-- TypeScript and/or JavaScript language server
lspconfig.tsserver.setup{}                              

-- JSON language server --
-- TODO: Configure it further based on info available in the documentations
lspconfig.jsonls.setup{
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_formatting({}, {0,0}, {vim.fn.line("$"), 0})
            end
        }
    }
}

-- HTML/CSS language server --
-- TODO: Configure & setup snippet plugin like LuaSnips or UltiSnips
-- Refer to https://github.com/neovim/nvim-lspconfig/issues/490
lspconfig.html.setup{}

-- YAML language server --
lspconfig.yamlls.setup{}

-- EFM language server --
-- TODO: Install the efm-language-server for working with linters & other
-- related diagnostics concerns. More info are available at here:
-- https://github.com/mattn/efm-langserver
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#efm
-- https://github.com/mantoni/eslint_d.js/
-- https://phelipetls.github.io/posts/configuring-eslint-to-work-with-neovim-lsp/

-- There's also another diagnostic plugin available below:
-- https://github.com/iamcco/diagnostic-languageserver
