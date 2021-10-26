-- Keymaps

vim.api.nvim_set_keymap('n', '<S-C-p>', '"0p', { noremap=true })
-- Delete without yank
vim.api.nvim_set_keymap('n','<leader>d', '"_d', { noremap=true })
vim.api.nvim_set_keymap('n','x', '"_x', { noremap=true })
-- Increment/decrement
vim.api.nvim_set_keymap('n','+', '<C-a>', { noremap=true })
vim.api.nvim_set_keymap('n','-', '<C-x>', { noremap=true })
-- Delete a word backwards
vim.api.nvim_set_keymap('n','dw', 'vb"_d', { noremap=true })

-- Select all
vim.api.nvim_set_keymap('n', '<C-a>', 'gg<S-v>G', {})
-- Tabs
vim.api.nvim_set_keymap('n', 'te', ':tabedit', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprev<Return>', {})
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<Return>', {})
-- Windows
vim.api.nvim_set_keymap('n', 'ws', ':split<Return><C-w>w', {})
vim.api.nvim_set_keymap('n', 'wv', ':vsplit<Return><C-w>w', {})
vim.api.nvim_set_keymap('n', '<Space>', '<C-w>w', {})
vim.api.nvim_set_keymap('', 'wh', '<C-w>h', {})
vim.api.nvim_set_keymap('', 'wk', '<C-w>k', {})
vim.api.nvim_set_keymap('', 'wj', '<C-w>j', {})
vim.api.nvim_set_keymap('', 'wl', '<C-w>l', {})
vim.api.nvim_set_keymap('', 'wq', ':q<CR>', {})
vim.api.nvim_set_keymap('n', '<C-w><left>', '<C-w><', {})
vim.api.nvim_set_keymap('n', '<C-w><right>', '<C-w>>', {})
vim.api.nvim_set_keymap('n', '<C-w><up>', '<C-w>+', {})
vim.api.nvim_set_keymap('n', '<C-w><down>', '<C-w>-', {})

-- cancel search hightlight
vim.api.nvim_set_keymap('n', '<leader>l', ':nohlsearch<CR>', {})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {})
