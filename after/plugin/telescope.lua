local exist, telescope = pcall(require, "telescope")
if (not exist) then return end

local actions = require('telescope.actions')
local theme_opts = require('telescope.themes').get_dropdown {
    winblend = 10,
    border = true,
    previewer = false,
    shorten_path = false,
    heigth=20,
    width= 120
}
-- Global remapping
------------------------------
telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
      i = {
        ["<C-h>"] = "which_key"
      }
    },
  },
  extensions = {
    frecency = {
      show_scores = false,
      show_unindexed = true,
      ignore_patterns = {"*.git/*", "*/tmp/*"},
      disable_devicons = false,
      workspaces = {
        ["conf"]    = "~/.config",
        ["data"]    = "~/.local/share",
        ["project"] = "~/projects",
        ["wiki"]    = "~/second-brain"
      }
    },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    tele_tabby = {
      use_highlighter = true,
    }
  }
}

telescope.load_extension('frecency')
telescope.load_extension('fzf')
telescope.load_extension('file_browser')
