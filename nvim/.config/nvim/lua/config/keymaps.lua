
-- set local and global map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local km = vim.keymap.set

-- shortcuts for going to normal mode
-- km("i", "jj", "<esc>", { desc = "Go to normal mode" })
km("i", "jk", "<esc>", { desc = "Go to normal mode" })

-- better window navigation
km("n", "<c-h>", "<c-w>h", { desc = "Go to window left" })
km("n", "<c-l>", "<c-w>l", { desc = "Go to window right" })
km("n", "<c-j>", "<c-w>j", { desc = "Go to window down" })
km("n", "<c-k>", "<c-w>k", { desc = "Go to window up" })

-- better window splits
km("n", "<leader>w", ":split<cr>", { desc = "Split window horizontally", silent = true })
km("n", "<leader>s", ":vsplit<cr>", { desc = "Split window vertically", silent = true })

-- buffer navigation
km("n", "<s-h>", ":bprev<cr>", { desc = "Go to previous buffer", silent = true })
km("n", "<s-l>", ":bnext<cr>", { desc = "Go to next buffer", silent = true })

-- keep indenting
km("v", "<", "<gv", { desc = "Indent left" })
km("v", ">", ">gv", { desc = "Indent right" })

-- move selected lines in visual mode
km("v", "<a-j>", ":m '>+1<cr>gv=gv", { desc = "Move selected line down one", silent = true })
km("v", "<a-k>", ":m '<-2<cr>gv=gv", { desc = "Move selected line up one", silent = true })

-- move current line in normal mode
km("n", "<a-j>", ":m .+1<cr>==", { desc = "Move current line down one", silent = true })
km("n", "<a-k>", ":m .-2<cr>==", { desc = "Move current line down one", silent = true })

