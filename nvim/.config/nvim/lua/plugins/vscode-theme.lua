local M = { }

M.plugins = {
    "https://github.com/mofiqul/vscode.nvim"
}

M.config = function()
    require("vscode").setup()
    vim.cmd.colorscheme("vscode")
end

return M
