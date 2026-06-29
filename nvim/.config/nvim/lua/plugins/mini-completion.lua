local M = {}

M.config = function()
    local mini_completion = require("mini.completion")
    mini_completon.setup({
        lsp_completion = {
            auto_setup = true
        }
    })
end

return M
