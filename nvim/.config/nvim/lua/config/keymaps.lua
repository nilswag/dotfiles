local opts = { noremap = true, silent = true, nowait = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-s>", ":split<cr>", opts)
keymap("n", "<C-w>", ":vsplit<cr>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)

keymap("n", "<leader>e", ":Ex<cr>", opts)
keymap("n", "<C-up>", ":resize -2<cr>", opts)
keymap("n", "<C-down>", ":resize +2<cr>", opts)
keymap("n", "<C-left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-right>", ":vertical resize +2<cr>", opts)

keymap("x", "<A-j>", ":m '>+1<cr>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<cr>gv=gv", opts)
