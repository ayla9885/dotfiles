local map = vim.keymap.set
-- set <leader> to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = " "

map('n', '<C-l>', "<C-w>l", {desc="Go to the right window"})
map('n', '<C-h>', "<C-w>h", {desc="Go to the left window"})
map('n', '<C-k>', "<C-w>k", {desc="Go to the top window"})
map('n', '<C-j>', "<C-w>j", {desc="Go to the bottom window"})

map('n', '<A-l>', '<C-w>>')
map('n', '<A-h>', '<C-w><')
map('n', '<A-j>', '<C-w>-')
map('n', '<A-k>', '<C-w>+')

-- move windows around
map('n', '<A-r>', '<cmd>WinShift<cr>')

-- open fuzzy finder
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {desc='Search Files'})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {desc='Search Contents'})

-- terminal
map('n', '<leader>t', '<cmd>11split term://fish<cr><cmd>startinsert<cr>', {desc='Open Terminal'})

-- explorer
map('n', '<leader>e', '<cmd>CHADopen<cr>', {desc='Open File Exporer'})

-- esc to exit terminal mode
map('t', '<esc>', '<C-\\><C-N>')

-- tab to change windows
map('n', '<C-tab>', 'gt')
map('n', '<C-S-tab>', 'gT')
