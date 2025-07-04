return {
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	opts = function()
	-- 		local cmp = require("cmp")
	-- 		return {
	-- 			snippet = {
	-- 				expand = function(args)
	-- 					vim.snippet.expand(args.body)
	-- 				end,
	-- 			},
	-- 			mapping = {
	-- 				['<cr>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						cmp.confirm({select = true})
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end),
	-- 				['<Tab>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						cmp.select_next_item()
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end),
	-- 				['<S-Tab>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						cmp.select_prev_item()
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end)
	-- 			},
	-- 			sources = cmp.config.sources({
	-- 				{ name = "nvim_lsp", },
	-- 			}, {
	-- 				{ name = "buffer" },
	-- 			}),
	-- 		}
	-- 	end
	-- },
	-- {
	-- 	"hrsh7th/cmp-nvim-lsp",
	-- 	opts = {
	-- 		sources = {
	-- 			{ name = 'nvim_lsp'}
	-- 		}
	-- 	},
	-- },
	{
		"echasnovski/mini.completion",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.snippets",
		version = false,
		opts = {}
	},
	{
		"neovim/nvim-lspconfig",
	},
}
