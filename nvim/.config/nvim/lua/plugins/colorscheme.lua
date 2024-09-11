local M = {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false
}

function M.config()
	require("gruvbox").setup({
        transparent_mode = true
    })

    vim.cmd "set background=dark"
	vim.cmd "colorscheme gruvbox"
end

return M
