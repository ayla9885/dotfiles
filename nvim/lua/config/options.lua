-- general
vim.cmd[[colorscheme no-clown-fiesta]]
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- vim.opt.cursorlineopt = "number" -- highlights line number instead of whole line
vim.opt.ruler = false

-- window
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.title = true

-- movement
vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 60
vim.opt.smoothscroll = true

-- indentation 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.listchars = { tab='  ' }

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- editing
vim.opt.undofile = true
vim.opt.textwidth = 80
vim.opt.wrap = true
vim.opt.clipboard = "unnamedplus"
vim.opt.syntax = "enable"
vim.opt.spell = false
