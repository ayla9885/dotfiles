return {
	{
		"echasnovski/mini.icons",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.pairs",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.statusline",
		version = false,
		opts = {},
	},
	{
		'christoomey/vim-tmux-navigator',
		lazy = false,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		separator = '▎',
		lazy = false,
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			source_selector = {
				winbar = true,
				statusline = false
			},
		},
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			animation = false,
			icons = {
				-- separator = {
				-- 	left = '|',
				-- 	right = ''
				-- },
			},
			sidebar_filetypes = {
				['neo-tree'] = true,
			}
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {

		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			}
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = { "lua", "glsl", "c", "rust", "java", "markdown", "markdown_inline" },
			sync_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		},
	},
	-- Colorschemes --
	{
		"aktersnurra/no-clown-fiesta.nvim",
		priority = 1000,
		lazy = false,
	},
}
