return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  
  config = function()
    local builtin = require("telescope.builtin")
    local opts = function(desc)
      return { noremap = true, silent = true, desc = desc }
    end

    vim.keymap.set("n", "<leader>ff", builtin.find_files, opts("Telescope find files"))
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts("Telescope live grep"))
    vim.keymap.set("n", "<leader>fb", builtin.buffers, opts("Telescope buffers"))
  end
}
