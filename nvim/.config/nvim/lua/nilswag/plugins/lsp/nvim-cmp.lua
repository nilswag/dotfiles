local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },

  mapping = cmp.mapping.preset.insert({
    ["<c-b>"] = cmp.mapping.scroll_docs(-4),
    ["<c-f>"] = cmp.mapping.scroll_docs(4),
    ["<c-space>"] = cmp.mapping.complete(),
    ["<c-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" }
  }, {
    { name = 'buffer' },
  }),

})
