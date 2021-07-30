-- Module for configuring Neovim's native LSP --

-- The in-built LSP is configured through a plugin named: neovim/lspconfig
-- But each Language Servers has to be configured seperately.
-- For more information on how-to configure the individual language servers,
-- refer to the CONFIG.md file in the plugin's repo which is also available at:
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

local nvim_lsp = require('lspconfig')

-- Creates a new ClientCapabilities object for Neovim
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Support Snippets completion through the LSP
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = { "tsserver", "pyright", "jsonls", "html", "yamlls" }

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        -- Need more info on the "on_attach" function.
        -- A good place to start is at:
        -- https://github.com/mjlbach/defaults.nvim/blob/73d4b205be5711b681ef2df9d171b1c55040803b/init.lua#L146
        -- on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- EFM language server --
-- TODO: Install the efm-language-server for working with linters & other
-- related diagnostics concerns. More info are available at here:
-- https://github.com/mattn/efm-langserver
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#efm
-- https://github.com/mantoni/eslint_d.js/
-- https://phelipetls.github.io/posts/configuring-eslint-to-work-with-neovim-lsp/

-- There's also another diagnostic plugin available below:
-- https://github.com/iamcco/diagnostic-languageserver
