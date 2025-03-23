local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.rust_analyzer.setup {
	capabilities = capabilities,
}
lspconfig.clangd.setup {
	capabilities = capabilities,
}
lspconfig.jdtls.setup {
	capabilities = capabilities,
}
lspconfig.glsl_analyzer.setup {
	capabilities = capabilites,
}
lspconfig.lua_ls.setup {
	capabilities = capabilities,
}

