vim.g.mapleader = " "
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))

vim.keymap.set("n", "<c-h>", "<c-w>h", opts("Move window left"))
vim.keymap.set("n", "<c-l>", "<c-w>l", opts("Move window right"))
vim.keymap.set("n", "<c-j>", "<c-w>j", opts("Move window down"))
vim.keymap.set("n", "<c-k>", "<c-w>k", opts("Move window up"))

vim.keymap.set("n", "<leader>w", ":split<cr>", opts("Split window horizontally"))
vim.keymap.set("n", "<leader>s", ":vsplit<cr>", opts("Split window vertically"))

vim.keymap.set("n", "<leader>q", ":bd<cr>", opts("Close active buffer"))
