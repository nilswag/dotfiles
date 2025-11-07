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
  }
}
