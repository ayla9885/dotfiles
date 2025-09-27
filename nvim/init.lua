local vim = vim

vim.cmd("colorscheme default")
vim.cmd("set completeopt+=noselect")

vim.o.number = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.complete = "o"

vim.g.mapleader = " "

--Keybinds
local map = vim.keymap.set
map('n', '<leader>o', ':update<CR>:source<CR>')
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')
map('n', '<leader>d', vim.diagnostic.open_float)
map('n', '<leader>lf', vim.lsp.buf.format)

vim.pack.add({
	{ src = "http://github.com/neovim/nvim-lspconfig" },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
