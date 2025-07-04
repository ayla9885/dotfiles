local lspconfig = require("lspconfig")
--local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.rust_analyzer.setup {
	--capabilities = capabilities,
}
lspconfig.clangd.setup {
	--capabilities = capabilities,
}
lspconfig.jdtls.setup {
	--capabilities = capabilities,
}
lspconfig.glsl_analyzer.setup {
	--capabilities = capabilities,
}
lspconfig.lua_ls.setup {
	--capabilities = capabilities,
}
lspconfig.pylsp.setup {
	--capabilities = capabilities,
}
lspconfig.zls.setup {
	--capabilities = capabilities,
}



-- show errors after a line
vim.diagnostic.config({
	virtual_text = true
})

