-- remap.lua
vim.g.mapleader = " "
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

-- normal mode
-- vim.keymap.set("n", "<leader>pv", ":Ex<cr>", { noremap = true, silent = true, desc = "Open project view" })

-- visual mode

-- insert mode
vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))
