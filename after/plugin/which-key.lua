require("which-key").setup({
  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 9, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 1, 0, 1, 0 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 1, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 1, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually

  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    n = { "o", "O" },
  },
})

require('which-key').register({
  f = {
    name = "find",
    f = {"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer=false }))<CR>", "find file"},
    g = {"<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({ previewer=false }))<CR>", "find line"},
    b = {"<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer=false }))<CR>", "find buffer"},
    h = {"<cmd>lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({}))<CR>", "find tag"},
    r = {"<cmd>lua require'telescope'.extensions.frecency.frecency(require('telescope.themes').get_dropdown({ previewer=false }))<CR>", "find recent file"},
    t = {"<cmd>lua require'telescope'.extensions.tele_tabby.list(require('telescope.themes').get_dropdown({ previewer=false }))<CR>", "find tab"}
  },
  q = {"<cmd>wqall<CR>", "Save and Leave"},
  w = {"<cmd>w<CR>", "Save"},
  l = {"<cmd>nohlsearch<CR>", "Cancel highlight"},
  d = {"\"_d", "Delete without yank"},
}, { prefix = "<leader>" })

