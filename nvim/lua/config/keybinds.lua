-- set <leader> to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>f', function() MiniFiles.open() end, {desc="Open file picker"} )
