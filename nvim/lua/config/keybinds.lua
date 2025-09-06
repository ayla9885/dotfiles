local map = vim.keymap.set
-- set <leader> to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = " "

map('n', '<leader>y', '<Cmd>Yazi<cr>', {desc="Open Yazi"} )

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {desc='Search Files'})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {desc='Search Contents'})

map('n', '<C-l>', "<C-w>l", {desc="Go to the right window"})
map('n', '<C-h>', "<C-w>h", {desc="Go to the left window"})
map('n', '<C-k>', "<C-w>k", {desc="Go to the top window"})
map('n', '<C-j>', "<C-w>j", {desc="Go to the bottom window"})

map('n', '<A-l>', '<C-w>>')
map('n', '<A-h>', '<C-w><')
map('n', '<A-j>', '<C-w>-')
map('n', '<A-k>', '<C-w>+')

-- terminal
map('n', '<leader>t', '<cmd>10split term://fish<cr><cmd>startinsert<cr>', {desc='Open Terminal'})

-- esc to exit terminal mode
map('t', '<esc>', '<C-\\><C-N>')

-- ctrl hjkl to move around
-- map('t', '<C-l>', "<C-\\><C-N><C-w>l", {desc="Go to the right window"})
-- map('t', '<C-h>', "<C-\\><C-N><C-w>h", {desc="Go to the left window"})
-- map('t', '<C-k>', "<C-\\><C-N><C-w>k", {desc="Go to the top window"})
-- map('t', '<C-j>', "<C-\\><C-N><C-w>j", {desc="Go to the bottom window"})

