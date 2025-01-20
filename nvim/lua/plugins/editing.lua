return {
	{ 
		"echasnovski/mini.basics",
		version = false,
		opts = {
			options = {
				extra_ui = true,
			},
			mappings = {
				windows = true,
			},
			silent = false,
		},
	},
	{
		"echasnovski/mini.clue",
		version = false,
		opts = {
			triggers = {
				-- leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },
				
				-- Built-in completion
				{ mode = 'i', keys = '<C-x>' },

				-- `g` key
				{ mode = 'n', keys = 'g' },
				{ mode = 'x', keys = 'g' },

				-- Marks
				{ mode = 'n', keys = "'" },
				{ mode = 'n', keys = '`' },
				{ mode = 'x', keys = "'" },
				{ mode = 'x', keys = '`' },

				-- Registers
				{ mode = 'n', keys = '"' },
				{ mode = 'x', keys = '"' },
				{ mode = 'i', keys = '<C-r>' },
				{ mode = 'c', keys = '<C-r>' },

				-- Window commands
				{ mode = 'n', keys = '<C-w>' },

				-- `z` key
				{ mode = 'n', keys = 'z' },
				{ mode = 'x', keys = 'z' },
			},
			clues = {
			},
		}, 						-- TODO: need to setup config
	},
	{
		"echasnovski/mini.pairs",
		version = false,
		opts = {},
	},
}
