
local dir = vim.fn.stdpath("config") .. "/lua/plugins"

for name, type in vim.fs.dir(dir) do
    if type == "file" and name:match("%.lua") and name ~= "init.lua" then
        local mod_name = "plugins/" .. name:gsub("%.lua$", "")
        local spec = require(mod_name)

        if spec.plugins then
            vim.pack.add(spec.plugins, { confirm = true })
        end

        if spec.config then
            spec.config()
        end
    end
end
