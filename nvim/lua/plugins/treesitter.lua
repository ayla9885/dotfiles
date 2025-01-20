return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "c", "rust", "java", "markdown", "markdown_inline" },
			sync_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		},
	},
}
