local M = {}

M.plugins = {
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/civitasv/cmake-tools.nvim"
}

M.config = function()
    require("cmake-tools").setup()
end

return M
