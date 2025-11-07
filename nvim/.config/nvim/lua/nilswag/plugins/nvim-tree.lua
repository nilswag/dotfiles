return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 50
      }
    })

    local opts = function(desc)
      return { noremap = true, silent = true, desc = desc }
    end

    vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<cr>", opts("Open project view"))
  end
}
