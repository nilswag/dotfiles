-- =========================
-- initial setup
-- =========================
vim.g.mapleader = " "                     -- set leader key to space

local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }  -- common options for keymaps
end

-- =========================
-- insert mode keymaps
-- =========================
vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))  -- exit insert mode quickly

-- =========================
-- window navigation
-- =========================
vim.keymap.set("n", "<c-h>", "<c-w>h", opts("Move to left window"))
vim.keymap.set("n", "<c-l>", "<c-w>l", opts("Move to right window"))
vim.keymap.set("n", "<c-j>", "<c-w>j", opts("Move to window below"))
vim.keymap.set("n", "<c-k>", "<c-w>k", opts("Move to window above"))

-- =========================
-- window splitting
-- =========================
vim.keymap.set("n", "<leader>w", ":split<cr>", opts("Split window horizontally"))
vim.keymap.set("n", "<leader>s", ":vsplit<cr>", opts("Split window vertically"))

-- =========================
-- buffer management
-- =========================
vim.keymap.set("n", "<leader>q", ":bd<cr>", opts("Close active buffer"))
