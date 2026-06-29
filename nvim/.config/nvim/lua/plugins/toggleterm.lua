local M = {}

M.plugins = {
    "https://github.com/akinsho/toggleterm.nvim"
}

M.config = function()
    require("toggleterm").setup({
        open_mapping = "<C-\\>",
        direction = "float"
    })
end

return M
