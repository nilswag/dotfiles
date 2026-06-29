-- ======================
-- Keymaps
-- ======================
vim.g.mapleader = " " -- space for leader
vim.g.maplocalleader = " " -- space for local leader

vim.keymap.set("n", "<leader>c", ":nohlsearch<cr>", { desc = "Clear search highlights" })

vim.keymap.set("n", "n", "nzz", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Half page up (centered)" })

vim.keymap.set("n", "<leader>bn", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<c-tab>", ":bnext<cr>", { desc = "Next buffer (cycle)" })

vim.keymap.set("n", "<c-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<c-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<c-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<c-k>", "<C-w>k", { desc = "Move to top window" })
