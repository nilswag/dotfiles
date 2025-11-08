return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  
  config = function()
    local builtin = require("telescope.builtin")
    local opts = function(desc)
      return { noremap = true, silent = true, desc = desc }
    end

    vim.keymap.set("n", "<leader>ff", function() builtin.find_files({ hidden = true }) end, opts("Telescope find files"))
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts("Telescope live grep"))
    vim.keymap.set("n", "<leader>fb", builtin.buffers, opts("Telescope buffers"))
  end
}
