local M = {}

M.plugins = {
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/civitasv/cmake-tools.nvim"
}

M.config = function()
    require("cmake-tools").setup({})

    vim.keymap.set("n", "<F5>", ":CMakeRun<CR>", { desc = "Build and run CMake project" })
    vim.keymap.set("n", "<F4>", ":CMakeBuild<CR>", { desc = "Build CMake project" })
end

return M
