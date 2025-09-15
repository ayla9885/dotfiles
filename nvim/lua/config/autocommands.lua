local vim = vim

-- turn off cursorline highlights in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
								pattern = "*",
								callback = function() vim.opt.cursorline=false end })

-- turn on line width marker when editing markdown files
vim.api.nvim_create_autocmd("BufReadPost", {
								pattern = "*.md, *.markdown",
								callback = function() vim.opt.colorcolumn="81"
													vim.opt.spell = true end })

-- start CHADtree on startup
vim.api.nvim_create_autocmd("VimEnter", { command = "CHADopen" })
