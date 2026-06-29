local m = {}

m.plugins = {
    "https://github.com/tpope/vim-fugitive"
}

m.config = function()
    local mini_diff = require("mini.diff")
    mini_diff.setup({
        source = mini_diff.gen_source.git({ index = false })
    })

    vim.keymap.set("n", "<Leader>gg", "<CMD>tabnew | Git | only<CR>", { desc = "Fugitive full page new tab" })
    vim.keymap.set("n", "<Leader>gd", "<CMD>Gvdiffsplit<CR>", { desc = "Git diff split" })
end

return m
