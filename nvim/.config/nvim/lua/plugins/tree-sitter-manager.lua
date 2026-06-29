local M = {}

M.plugins = {
    "https://github.com/romus204/tree-sitter-manager.nvim"
}

M.config = function()
    require("tree-sitter-manager").setup({
        ensure_installed = {
            "c", "cpp", "lua", "markdown", "markdown_inline", "vimdoc"
        }
    })
end

return M
