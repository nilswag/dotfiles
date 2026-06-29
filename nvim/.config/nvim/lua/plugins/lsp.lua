local M = {}


M.plugins = {
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim"
}

M.config = function()
    require("mason").setup()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

    vim.lsp.config("*", { capabilities = capabilities })

    require("mason-lspconfig").setup({
        ensure_installed = {
            "lua_ls", 
            "clangd"
        }
    })
end

return M
