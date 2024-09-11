local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
}

function M.config()
    require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "asm", "bash", "c", "cpp", "make" },
        highlight = { enable = true },
        indent = { enable = true }
    })
end

return M
