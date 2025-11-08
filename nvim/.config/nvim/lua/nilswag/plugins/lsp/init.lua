local path = "nilswag.plugins.lsp."
return {
  {
    "neovim/nvim-lspconfig",
    config = function() require(path .. "nvim-lspconfig") end
  },
  {
    "mason-org/mason.nvim",
    config = function() require(path .. "mason") end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function() require(path .. "mason-lspconfig") end
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp"
  },
  {
    "hrsh7th/nvim-cmp",
    config = function() require(path .. "nvim-cmp") end
  }
}
