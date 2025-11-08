
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

vim.keymap.set("i", "jk", "<esc>", opts("Shortcut for <esc> key"))
