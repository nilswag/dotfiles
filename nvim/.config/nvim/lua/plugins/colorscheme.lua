local M = {
	"Shatur/neovim-ayu",
	priority = 1000,
	lazy = false
}

function M.config()
	require("ayu").setup({ })

	vim.cmd "colorscheme ayu"
end

return M
