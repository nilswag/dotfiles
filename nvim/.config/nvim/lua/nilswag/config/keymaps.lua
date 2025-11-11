vim.g.mapleader = " "                     -- set leader key to space

local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }  -- common options for keymaps
end

vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))  -- exit insert mode quickly

vim.keymap.set("n", "<c-h>", "<c-w>h", opts("Move to left window"))
vim.keymap.set("n", "<c-l>", "<c-w>l", opts("Move to right window"))
vim.keymap.set("n", "<c-j>", "<c-w>j", opts("Move to window below"))
vim.keymap.set("n", "<c-k>", "<c-w>k", opts("Move to window above"))

vim.keymap.set("v", "<", "<gv", opts("Stay in indent mode"))
vim.keymap.set("v", ">", ">gv", opts("Stay in indent mode"))

vim.keymap.set("v", "<a-j>", ":m .+1<cr>==", opts("Move text selection down"))
vim.keymap.set("v", "<a-k>", ":m .-2<cr>==", opts("Move text selection up"))

vim.keymap.set("n", "<leader>w", ":split<cr>", opts("Split window horizontally"))
vim.keymap.set("n", "<leader>s", ":vsplit<cr>", opts("Split window vertically"))

vim.keymap.set("n", "<leader>q", ":bd<cr>", opts("Close active buffer"))
vim.keymap.set("n", "<s-l>", ":bnext<cr>", opts("Move to next buffer"))
vim.keymap.set("n", "<s-h>", ":bprevious<cr>", opts("Move to previous buffer"))
