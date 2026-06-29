local M = {}

M.plugins = {
    "https://github.com/rebelot/kanagawa.nvim"
}

M.config = function()
    require("kanagawa").setup()
    vim.cmd.colorscheme("kanagawa-wave")
end

return M
