return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
	keys = {
		{
			"<leader>y",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open Yazi"
		}
	},
	---@type YaziConfig | {}
	opts = {
		open_for_directories = true,
	},
	init = function()
		vim.g.loaded_netrwPlugin = 1
	end,
}
