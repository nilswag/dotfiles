local M = {}

M.plugins = {
    "https://github.com/bluz71/vim-moonfly-colors"
}

M.config = function() 
    vim.cmd.colorscheme("moonfly")
end

return M
