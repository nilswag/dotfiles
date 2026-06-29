local M = {}

M.config = function()
    local mini_files = require("mini.files")
    mini_files.setup()

    vim.keymap.set("n", "-", function() mini_files.open() end, { desc = "Toggle mini files explorer" })
end

return M
