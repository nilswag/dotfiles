-- remap.lua
vim.g.mapleader = " "

-- normal mode
vim.keymap.set("n", "<leader>pv", ":Ex<cr>", { noremap = true, silent = true, desc = "Open project view" })

-- visual mode

-- insert mode
vim.keymap.set("i", "jk", "<esc>", { noremap = true, silent = true, desc = "Shortcut for <esc> key" })
