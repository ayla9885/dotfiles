return {
	-- {
	-- 	"echasnovski/mini.completion",
	-- 	version = false,
	-- 	opts = {},
	-- },
	{
		"hrsh7th/nvim-cmp",
		opts = function()
			local cmp = require("cmp")
			return {
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<Up>'] = cmp.mapping.select_prev_item(),
					['<Down>'] = cmp.mapping.select_next_item(),
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = {
					{ name = "nvim_lsp", },
				},
			}
		end
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
	},
}
