-- ======================
-- Keymaps
-- ======================
vim.g.mapleader = " " -- space for leader
vim.g.maplocalleader = " " -- space for local leader

vim.keymap.set("n", "<Leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "n", "nzz", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

vim.keymap.set("n", "<Leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<Leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-tab>", ":bnext<CR>", { desc = "Next buffer (cycle)" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })

vim.keymap.set("n", "<Leader>sv", ":vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<Leader>sh", ":split<CR>", { desc = "Split horizontally" })
vim.keymap.set("n", "<C-down>", ":resize -2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-left>", ":vertical resize +2<CR>", { desc = "Increase window width" })
vim.keymap.set("n", "<C-right>", ":vertical resize -2<CR>", { desc = "Increase window width" })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

vim.keymap.set("n", "<leader>tt", function()
    if vim.diagnostic.is_enabled() then
        vim.diagnostic.enable(false)
    else
        vim.diagnostic.enable(true)
    end
end, { desc = "Toggle diagnostic" })
