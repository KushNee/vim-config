-- Keymaps
-- Delete without yank
--vim.api.nvim_set_keymap('n','<leader>d', '"_d', { noremap=true })
vim.api.nvim_set_keymap('n','x', '"_x', { noremap=true })
-- Increment/decrement
vim.api.nvim_set_keymap('n','+', '<C-a>', { noremap=true })
vim.api.nvim_set_keymap('n','-', '<C-x>', { noremap=true })

-- Select all
vim.api.nvim_set_keymap('n', '<C-a>', 'gg<S-v>G', {})
-- Tabs
vim.api.nvim_set_keymap('n', 'te', ':tabedit', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprev<CR>', {})
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', {})
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', {})
vim.api.nvim_set_keymap('n', 'td', ':tabclose<CR>', {})
-- Windows
vim.api.nvim_set_keymap('n', 'ws', ':split<Return><C-w>w', {})
vim.api.nvim_set_keymap('n', 'wv', ':vsplit<Return><C-w>w', {})
vim.api.nvim_set_keymap('', 'wh', '<C-w>h', {})
vim.api.nvim_set_keymap('', 'wk', '<C-w>k', {})
vim.api.nvim_set_keymap('', 'wj', '<C-w>j', {})
vim.api.nvim_set_keymap('', 'wl', '<C-w>l', {})
vim.api.nvim_set_keymap('', 'wd', ':q<CR>', {})
vim.api.nvim_set_keymap('n', '<C-w><left>', '<C-w><', {})
vim.api.nvim_set_keymap('n', '<C-w><right>', '<C-w>>', {})
vim.api.nvim_set_keymap('n', '<C-w><up>', '<C-w>+', {})
vim.api.nvim_set_keymap('n', '<C-w><down>', '<C-w>-', {})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {})

-- show which-key
vim.api.nvim_set_keymap('n', '\'', ':WhichKey<CR>', { noremap=true })

-- trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

