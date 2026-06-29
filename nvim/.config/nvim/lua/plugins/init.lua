
local spec_files = {
    "mini",
    "mini-pick",
    "mini-files",
    "mini-statusline",
    "mini-notify",
    "mini-cmdline",
    "mini-extra",
    "mini-completion",
    "tree-sitter-manager",
    "git-integration",
    "moonfly",
    "lsp",
    "toggleterm",
    "cmake-tools"
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
