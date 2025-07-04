return {
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
}
