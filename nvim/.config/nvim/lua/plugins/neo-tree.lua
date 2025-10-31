return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,

    config = function()
        require("neo-tree").setup({
            vim.keymap.set("n", "<leader>e", ":Neotree action=focus toggle<cr>", { silent = true, noremap = true })
        })
    end
}
