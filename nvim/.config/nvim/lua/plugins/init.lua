
local spec_files = {
    "catppuccin",
}

for i, spec_file in ipairs(spec_files) do
    local spec = require("plugins/" .. spec_file)

    if spec.plugins then
        vim.pack.add(spec.plugins, { confirm = false })
    end

    if spec.config then
        spec.config()
    end
end
