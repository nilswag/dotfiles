require("mason-lspconfig").setup({
  automatic_enable = true,
  ensure_installed = {
    "lua_ls",
    "clangd",
    "cmake",
    "vimls",
  }
})

