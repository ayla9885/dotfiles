-- Options
vim.cmd("colorscheme default")
vim.cmd("set completeopt+=noselect")

vim.o.number = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.complete = "o"
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.termguicolors = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.undofile = true
vim.o.guicursor = "n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,t-i:block-blinkon500-blinkoff500-TermCursor"

vim.g.mapleader = " "

-- Keybinds
local map = vim.keymap.set
map('n', '<leader>o', ':update<CR>:source<CR>')
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')
map('n', '<leader>v', ':e $MYVIMRC<CR>')
map('n', '<leader>d', vim.diagnostic.open_float)
map('n', '<leader>lf', vim.lsp.buf.format)
map('n', '<leader>r', ':make<CR>')

map('n', '<leader>t', ':10 split term://fish<CR>')
map('t', '<ESC>', '<C-\\><C-n>')

-- Plugins
vim.pack.add({
	{ src = "http://github.com/neovim/nvim-lspconfig" },
})

-- LSP
vim.lsp.enable({ "lua_ls", "clangd", "jdtls", "pylsp" })
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			}
		}
	}
})
