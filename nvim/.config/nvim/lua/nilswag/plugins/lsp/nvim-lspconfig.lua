local on_attach = function(_, bufnr)
  local opts = function(desc)
    return { noremap = true, buffer = bufnr, desc = desc }
  end

  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover"))
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Go to implementation"))
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts("Show diagnostics"))
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  capabilities = capabilities
})

vim.lsp.config("clangd", {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    clangdFileStatus = true
  }
})

vim.lsp.config("vim_ls", {
  on_attach = on_attach,
  capabilities = capabilities
})

vim.lsp.config("cmake", {
  on_attach = on_attach,
  capabilities = capabilities
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
