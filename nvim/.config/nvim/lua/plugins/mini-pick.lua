local M = {}

M.config = function()
    local mini_pick = require("mini.pick")
    mini_pick.setup()

    vim.keymap.set("n", "<leader>pf", function() mini_pick.builtin.files() end, { desc = "Pick files" })
    vim.keymap.set("n", "<leader>ps", function() mini_pick.builtin.grep({ pattern = vim.fn.expand("<cword>") }) end, { desc = "Pick word" })
    vim.keymap.set("n", "<leader>vh", function() mini_pick.builtin.help() end, { desc = "Pick help" })
end

return M
