return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {"github-nvim-theme"},
        config = function()
            require("lualine").setup {
                options = {
                    theme = "auto",
                }
            }
        end
    },
    {
        'projekt0n/github-nvim-theme',
        tag = "v0.0.7",
    },
    {
        'crispgm/nvim-tabline',
        dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
        config = function ()
          require("tabline").setup({
           show_index = true,        -- show tab index
           show_modify = true,       -- show buffer modification indicator
           show_icon = false,        -- show file extension icon
           modify_indicator = '[+]', -- modify indicator
           no_name = 'No name',      -- no name buffer name
           brackets = { '[', ']' },  -- file name brackets surrounding
          })
        end
    },
    {
        "f-person/auto-dark-mode.nvim",
        config=function()
            require("auto-dark-mode").setup {
                update_interval = 1000,
                set_dark_mode = function()
                    vim.api.nvim_set_option("background", "dark")
                    require('github-theme').setup({
                        theme_style = 'dark'
                    })
                    require("lualine").setup({
                      options = {
                        theme = "github_dark"
                      }
                    })
                end,
                set_light_mode = function()
                    vim.api.nvim_set_option('background', 'light')
                    require('github-theme').setup({
                        theme_style = 'light'
                    })
                    require("lualine").setup({
                      options = {
                        theme = "github_light"
                      }
                    })
                end
            }
        end
    }
}
