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

-- obsidian
vim.keymap.set(
  "n",
  "gf",
  function()
    if require('obsidian').util.cursor_on_markdown_link() then
      return "<cmd>ObsidianFollowLink<CR>"
    else
      return "gf"
    end
  end,
  { noremap = false, expr = true}
)
