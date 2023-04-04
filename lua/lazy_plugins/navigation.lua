return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function ()
          local telescope = require("telescope")
          local actions = require("telescope.actions")

          telescope.setup({
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
            pickers = {
              find_files = {
                theme = "dropdown",
              }
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
                  ["wiki"]    = "~/knowledge-base"
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
              },
              heading = {
                treesitter = true
              }
            }
          })

          telescope.load_extension('frecency')
          telescope.load_extension('fzf')
          telescope.load_extension('file_browser')
          telescope.load_extension('heading')
        end
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        dependencies = {"kkharji/sqlite.lua"}

    },
    {
        "nvim-telescope/telescope-file-browser.nvim"
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },
    {
        'TC72/telescope-tele-tabby.nvim'
    },
    {
        'crispgm/telescope-heading.nvim'
    }
}
