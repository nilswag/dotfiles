-- remap.lua
vim.g.mapleader = " "
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

-- normal mode
-- vim.keymap.set("n", "<leader>pv", ":Ex<cr>", { noremap = true, silent = true, desc = "Open project view" })
vim.keymap.set("n", "<c-h>", "<c-w>h", opts("Move cursor one window to the left"))
vim.keymap.set("n", "<c-l>", "<c-w>l", opts("Move cursor one window to the right"))
vim.keymap.set("n", "<c-j>", "<c-w>j", opts("Move cursor one window to the down"))
vim.keymap.set("n", "<c-k>", "<c-w>k", opts("Move cursor one window to the up"))

vim.keymap.set("n", "<leader>w", ":split<cr>", opts("Split window horizontally"))
vim.keymap.set("n", "<leader>s", ":vsplit<cr>", opts("Split window vertically"))


-- visual mode

-- insert mode
vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))
