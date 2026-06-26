require("mini.files").setup()
vim.keymap.set("n", "<Leader>e", ":lua MiniFiles.open()<CR>", { desc = "Toggle mini files explorer", silent = true })
