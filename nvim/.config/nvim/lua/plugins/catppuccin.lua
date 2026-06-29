local M = {}

M.plugins = {
    "https://github.com/catppuccin/nvim"
}

M.config = function()
    require("catppuccin").setup()
    vim.cmd.colorscheme("catppuccin-macchiato")
end

return M
