local M = {
    "alexghergh/nvim-tmux-navigation",
    lazy = false
}

function M.config()
    require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true,
        keybindings = {
            left = "<C-h>",
            right = "<C-l>",
            up = "<C-k>",
            down = "<C-j>"
        }
    })
end

return M
