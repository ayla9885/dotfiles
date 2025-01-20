return {
	-- {
	-- 	"echasnovski/mini.completion",
	-- 	version = false,
	-- 	opts = {},
	-- },
	{
		"hrsh7th/nvim-cmp",
		opts = {
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			-- window = {
			-- 	completion = cmp.config.window.bordered(),
			-- 	documentation = cmp.config.window.bordered(),
			-- },
			sources = {
				{ name = "nvim_lsp", },
			},
		},
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
	},
}
