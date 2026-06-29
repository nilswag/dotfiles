local M = {}

M.config = function()
    local mini_completion = require("mini.completion")
    mini_completion.setup()
end

return M
