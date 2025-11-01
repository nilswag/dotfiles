return {
    "neovim/nvim-lspconfig",

    config = function()
        local on_attach = function(client, bufnr)
            local km = vim.keymap.set
 
            km("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
            km("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            km("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
            km("n", "gT", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
            km("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })

            km("n", "K", vim.lsp.buf.hover, { desc = "Hover information" })
            km("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })

            -- km("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
        end

        vim.lsp.config("lua_ls", { on_attach = on_attach })

        vim.lsp.config("clangd", { on_attach = on_attach })

        vim.lsp.config("neocmake", {})
    end
}
