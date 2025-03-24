local map = vim.keymap.set
-- set <leader> to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = " "

map('n', '<leader>t', '<Cmd>Neotree toggle<cr>', {desc="Open file explorer"} )
map('n', '<leader>bp', '<Cmd>BufferPick<cr>', {desc="Enter buffer picking mode"})

map('n', '<C-l>', "<C-w>l", {desc="Go to the right window"})
map('n', '<C-h>', "<C-w>h", {desc="Go to the left window"})
map('n', '<C-k>', "<C-w>k", {desc="Go to the top window"})
map('n', '<C-j>', "<C-w>j", {desc="Go to the bottom window"})

map('n', '<Tab>', "<Cmd>BufferNext<cr>", {desc="Next buffer"})
map('n', '<S-Tab>', '<Cmd>BufferPrevious<cr>', {desc='Previous buffer'})
map('n', '<C-q>', '<Cmd>BufferClose<cr>', {desc="Close a buffer"})


