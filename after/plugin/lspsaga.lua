local exist, saga = pcall(require, "lspsaga")
if (not exist) then return end

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

local function global_set_keymap(...) vim.api.nvim_set_keymap(...) end
local opts = { noremap=true, silent=true }

global_set_keymap('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
global_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
global_set_keymap('i', '<C-k>', '<cmd>Lspsaga signature_help<CR>', opts)
global_set_keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
global_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
global_set_keymap('v', '<leader>ca', '<cmd><C-U>Lspsaga range_code_action<CR>', opts)
