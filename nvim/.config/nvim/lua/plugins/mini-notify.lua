local M = {}

M.config = function()
    require("mini.notify").setup({
        content = {
            format = function(notif)
                return notif.msg
            end
        }
    })
end

return M
