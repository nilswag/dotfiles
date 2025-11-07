
-- =========================
-- Appearance
-- =========================
vim.cmd.colorscheme("catppuccin")         -- set colorscheme
vim.opt.termguicolors = true              -- enable true colors in terminal
vim.opt.number = true                     -- enable absolute line numbers
vim.opt.relativenumber = true             -- enable relative line numbers
vim.opt.cursorline = true                 -- highlight the current line
vim.opt.guicursor = ""                    -- always use block cursor
vim.opt.scrolloff = 10                    -- keep 10 lines above/below cursor

-- =========================
-- Tabs and Indentation
-- =========================
vim.opt.tabstop = 2                       -- number of spaces that a <tab> displays
vim.opt.softtabstop = 2                   -- number of spaces that a <tab> inserts
vim.opt.shiftwidth = 2                    -- number of spaces used for indentation
vim.opt.expandtab = true                  -- convert tabs to spaces
vim.opt.smartindent = true                -- automatically indent new lines

-- =========================
-- Editing Behavior
-- =========================
vim.opt.wrap = false                      -- disable line wrapping
vim.opt.clipboard = "unnamedplus"         -- use system clipboard
vim.opt.signcolumn = "yes"                -- always show sign column

-- =========================
-- Search
-- =========================
vim.opt.hlsearch = false                  -- disable persistent highlights after search
vim.opt.ignorecase = true                 -- ignore case in search
vim.opt.smartcase = true                  -- override ignorecase if uppercase letters used
vim.opt.incsearch = true                  -- incremental search

-- =========================
-- Window Management
-- =========================
vim.opt.splitbelow = true                 -- horizontal splits open below
vim.opt.splitright = true                 -- vertical splits open to the right
vim.opt.laststatus = 0                    -- remove default statusline

-- =========================
-- Backup and Undo
-- =========================
vim.opt.swapfile = true                   -- keep a swapfile for crash recovery
vim.opt.undofile = true                   -- save undo history between sessions
vim.opt.undolevels = 150                  -- max undo levels to save in undo file
