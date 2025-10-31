-- default options for keymaps 
-- silent: prevent output
-- noremap: prevent recursive keymaps
local opts = { silent = true, noremap = true }

-- set local and global map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- shortcuts for going to normal mode
vim.keymap.set("i", "jj", "<esc>", opts)
vim.keymap.set("i", "jk", "<esc>", opts)

