local M = {}

M.config = function()
    local mini_extra = require("mini.extra")
    
    vim.keymap.set("n", "<Leader>xx", function() mini_extra.pickers.diagnostic() end, { desc = "Mini picker diagnostics" })
    vim.keymap.set("n", "<Leader>pk", function() mini_extra.pickers.keymaps() end, { desc = "Search keymaps" })
end

return M
