
local o = vim.opt
local g = vim.g

o.cursorline = true
o.scrolloff = 10

o.termguicolors = true
o.background = "dark"

o.signcolumn = "yes"
o.number = true
o.relativenumber = true
o.laststatus = 0

o.wrap = false

o.undofile = true
o.backup = false
o.writebackup = false

o.ignorecase = true
o.smartcase = true
o.hlsearch = false

o.autoindent = true
o.copyindent = true
o.breakindent = true

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true

o.clipboard = "unnamedplus"
g.clipboard = {
	["name"] = "WslClipboard",
	["copy"] = {
		["+"] = "clip.exe",
		["*"] = "clip.exe"
	},
	["paste"] = {
		["+"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace('\r', ''))",
		["*"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace('\r', ''))"
	},
	["cache_enabled"] = 0
}
