local exist, telescope = pcall(require, "telescope")
if (not exist) then return end

local actions = require('telescope.actions')
-- Global remapping
------------------------------
telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
local function global_set_keymap(...) vim.api.nvim_set_keymap(...) end
local opts = { noremap=true, silent=true }

global_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts)
global_set_keymap('n', '<leader>r', '<cmd>Telescope live_grep<CR>', opts)
global_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<CR>', opts)
global_set_keymap('n', '<leader>h', '<cmd>Telescope help_tags<CR>', opts)
