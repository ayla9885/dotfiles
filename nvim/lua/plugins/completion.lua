return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			{ "ms-jpq/coq_nvim", branch = "coq" },
			{ "ms-jpq/coq.artifacts", branch = "artifacts" }
		},
		init = function()
			vim.g.coq_settings = {
				-- COQ Settings
				auto_start = "shut-up",
			}
		end,
		config = function()
			local coq = require("coq")
			local vim = vim
			vim.lsp.config('lua_ls', coq.lsp_ensure_capabilities({
				on_attach = on_attach,
				flags = lsp_flags,
				setting = {
					Lua = {
						runtime = {
							version = "LuaJIT"
						},
						diagnostics = {
							globals = { "vim" }
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("lua", true)
						},
						telemetry = {
							enable = false
						}
					}
				}
			}))
			vim.lsp.enable('lua_ls')
			vim.lsp.config('clangd', coq.lsp_ensure_capabilities())
			vim.lsp.enable('clangd')
			vim.lsp.config('jdtls', coq.lsp_ensure_capabilities())
			vim.lsp.enable('jdtls')
			vim.lsp.config('glsl_analyzer', coq.lsp_ensure_capabilities())
			vim.lsp.enable('glsl_analyzer')
			vim.lsp.config('rust_analyzer', coq.lsp_ensure_capabilities())
			vim.lsp.enable('rust_analyzer')
			vim.lsp.config('pylsp', coq.lsp_ensure_capabilities())
			vim.lsp.enable('pylsp')
			vim.lsp.config('zls', coq.lsp_ensure_capabilities())
			vim.lsp.enable('zls')
		end,
	},
}
