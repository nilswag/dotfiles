local M = {}

M.plugins = {
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/civitasv/cmake-tools.nvim"
}

M.config = function()
    require("cmake-tools").setup({
        cmake_executor = {
            name = "toggleterm",
            opts = {},
            default_opts = {
                toggleterm = {
                    direction = "float",     -- 'vertical' | 'horizontal' | 'tab' | 'float'
                    close_on_exit = false,
                    auto_scroll = true,
                    singleton = true,        -- reuse one terminal instance instead of spawning new ones
                },
            },
        },

        cmake_runner = {
            name = "toggleterm",
            opts = {},
            default_opts = {
                toggleterm = {
                    direction = "float",
                    close_on_exit = false,
                    auto_scroll = true,
                    singleton = true,
                },
            },
        },
    })

    vim.keymap.set("n", "<F5>", ":CMakeRun<CR>", { desc = "Build and run CMake project" })
    vim.keymap.set("n", "<F4>", ":CMakeBuild<CR>", { desc = "Build CMake project" })
end

return M
