local cmp = require("cmp")

cmp.setup({
  snippet = { expand = function(args) end },

  mapping = cmp.mapping.preset.insert({
    ["<c-b>"] = cmp.mapping.scroll_docs(-4),
    ["<c-f>"] = cmp.mapping.scroll_docs(4),
    ["<c-space>"] = cmp.mapping.complete(),
    ["<c-e>"] = cmp.mapping.abort(),
    ["<cr>"] = cmp.mapping.confirm({ select = true })
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" }
  }, {
    { name = 'buffer' },
  }),

})
