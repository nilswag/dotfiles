-- ======================
-- Keymaps
-- ======================
vim.g.mapleader = " " -- space for leader
vim.g.maplocalleader = " " -- space for local leader

vim.keymap.set("n", "<Leader>c", ":nohlsearch<cr>", { desc = "Clear search highlights" })

vim.keymap.set("n", "n", "nzz", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

vim.keymap.set("n", "<Leader>bn", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<Leader>bp", ":bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-tab>", ":bnext<cr>", { desc = "Next buffer (cycle)" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })

vim.keymap.set("n", "<Leader>sv", ":vsplit<cr>", { desc = "Split vertically" })
vim.keymap.set("n", "<Leader>sh", ":split<cr>", { desc = "Split horizontally" })
vim.keymap.set("n", "<C-down>", ":resize -2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-up>", ":resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-left>", ":vertical resize +2<cr>", { desc = "Increase window width" })
vim.keymap.set("n", "<C-right>", ":vertical resize -2<cr>", { desc = "Increase window width" })

vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
