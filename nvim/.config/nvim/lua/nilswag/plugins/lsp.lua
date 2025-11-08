return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "vimls"
      }
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local on_attach = function(_, bufnr)
        local opts = function(desc)
          return { noremap = true, silent = true, buffer = bufnr, desc = desc }
        end

        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts("Format buffer"))
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover"))
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts("Go to definition"))
        vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts("Go to declaration"))
        vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts("Go to implementation"))
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts("Show references"))
      end

      vim.diagnostic.config({ virtual_lines = true })
      vim.diagnostic.config({ virtual_text = true })

      vim.lsp.config("lua_ls", {
        on_attach = on_attach
      })

      vim.lsp.config("clangd", {
        on_attach = on_attach
      })

      vim.lsp.config("vimls", {
        on_attach = on_attach
      })
    end
  }
}
