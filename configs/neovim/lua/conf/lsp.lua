-- Config file for neovim/nvim-lspconfig

local M = {}

function M.setup()
    local function sign(severity, icon)
        local hl = 'Diagnostic' .. severity
        vim.fn.sign_define(
            'DiagnosticSign' .. severity,
            { text = icon, texthl = hl, numhl = hl }
        )
    end

    sign('Error', '')   -- ◉
    sign('Warn', '')    -- ●
    sign('Info', '')    -- •
    sign('Hint', '')    -- ·

    vim.diagnostic.config {
        underline = true,
        signs = true,
        virtual_text = false,
        update_in_insert = true,
        severity_sort = true,
    }

    -- Handle smart formatting
    -- If buffer has been edited before formatting has completed,
    -- do not try to apply the changes, by Lukas Reineke
    vim.lsp.handlers['textDocument/formatting'] = function(err, result, ctx, _)
        if err ~= nil or result == nil then
            return
        end

        local bufnr = ctx.bufnr
        -- If the buffer hasn't been modified before the formatting has
        -- finished update the buffer
        if not vim.api.nvim_buf_get_option(bufnr, 'modified') then
            local view = vim.fn.winsaveview()
            vim.lsp.util.apply_text_edits(result, bufnr)
            vim.fn.winrestview(view)
            if bufnr == vim.api.nvim_get_current_buf() then
                vim.cmd 'noautocmd :update'

                -- Trigger post-formatting autocommand which can be used to refresh gitsigns
                vim.cmd 'silent doautocmd <nomodeline> user FormatterPost'
            end
        end
    end

    local overridden_hover = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'single',
        focusable = 'false',
    })
    vim.lsp.handlers['textDocument/hover'] = function(...)
        local buf = overridden_hover(...)
    end

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
        vim.lsp.handlers.signature_help,
        { border = 'single', focusable = false }
    )

    -- Show diagnostics for current line as virtual text
    local diagnostic_ns = vim.api.nvim_create_namespace 'diagnostics'
    function _G.show_diagnostics()
        vim.schedule(function()
            local line = vim.api.nvim_win_get_cursor - 1
            local bufnr = vim.api.nvim_get_current_buf()
            local diagnostics = vim.diagnostics.get(bufnr, { lnum = line })
            vim.diagnostic.show(
                diagnostic_ns,
                bufnr,
                diagnostics,
                { virtual_text = true }
            )
        end)
    end
end

function M.config()
end

return M
