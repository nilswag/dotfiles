local M = {}


M.plugins = {
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
}

M.config = function()
    require("mason").setup()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

    vim.lsp.config("*", { capabilities = capabilities })

    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = { globals = { "vim" } }
            }
        }
    })

    vim.lsp.enable({
        "lua_ls",
        "clangd",
    })
end

return M
