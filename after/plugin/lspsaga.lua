local exist, lspsaga = pcall(require, "lspsaga")
if (not exist) then return end

lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
}

local function global_set_keymap(...) vim.api.nvim_set_keymap(...) end
local opts = { noremap=true, silent=true }

global_set_keymap('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
global_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
global_set_keymap('i', '<C-k>', '<cmd>Lspsaga signature_help<CR>', opts)
global_set_keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
global_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
global_set_keymap('v', '<leader>ca', '<cmd><C-U>Lspsaga range_code_action<CR>', opts)
