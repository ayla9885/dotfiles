vim.cmd("colorscheme default")
vim.cmd("set completeopt+=noselect")

vim.o.number = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.complete = "o"
vim.o.splitright = true
vim.o.splitbelow = true

vim.g.mapleader = " "

--Keybinds
local map = vim.keymap.set
map('n', '<leader>o', ':update<CR>:source<CR>')
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')
map('n', '<leader>d', vim.diagnostic.open_float)
map('n', '<leader>lf', vim.lsp.buf.format)

map('n', '<leader>t', ':10 split term://fish<CR>')
map('t', '<ESC>', '<C-\\><C-n>')

vim.pack.add({
	{ src = "http://github.com/neovim/nvim-lspconfig" },
})

vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			}
		}
	}
})

vim.lsp.enable("clangd")
