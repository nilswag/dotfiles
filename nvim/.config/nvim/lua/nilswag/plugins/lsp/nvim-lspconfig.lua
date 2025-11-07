local on_attach = function(bufnr)
  local opts = function(desc)
    return { noremap = true, desc = desc }
  end

  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover")) 
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Go to implementation"))
end

vim.lsp.config("lua_ls", {
  on_attach = on_attach
})
