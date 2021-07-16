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
lspconfig.html.setup{}

-- YAML language server --
lspconfig.yamlls.setup{}

