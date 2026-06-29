local M = { }

M.plugins = {
    "https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-lualine/lualine.nvim"
}

M.config = function()
    require("lualine").setup()
end

return M
