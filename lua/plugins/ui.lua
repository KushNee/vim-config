return {
    {
        "tiagovla/scope.nvim",
        config = function()
            require("scope").setup {}
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "github-nvim-theme" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    component_separators = "|",
                    section_separators = "",
                },
                sections = {
                    lualine_a = {
                        {
                            'tabs',
                            max_length = vim.o.columns / 3, -- Maximum width of tabs component.
                            -- Note:
                            -- It can also be a function that returns
                            -- the value of `max_length` dynamically.
                            mode = 2, -- 0: Shows tab_nr
                            -- 1: Shows tab_name
                            -- 2: Shows tab_nr + tab_name
                        }
                    }
                },
                extensions = { "neo-tree", "quickfix", "toggleterm", "lazy" },
            })
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        tag = "v0.0.7",
    },
    {
        "crispgm/nvim-tabline",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional
        config = function()
            require('tabline').setup({
                show_icon = true, -- show file extension icon
            })
            return true
        end,
    },
    {
        "f-person/auto-dark-mode.nvim",
        config = function()
            local auto_dark_mode = require("auto-dark-mode")
            local lualine = require("lualine")
            local github_theme = require("github-theme")
            auto_dark_mode.setup({
                update_interval = 1000,
                set_dark_mode = function()
                    vim.api.nvim_set_option("background", "dark")
                    github_theme.setup({
                        theme_style = "dark",
                    })
                    lualine.setup({
                        options = {
                            theme = "github_dark",
                        },
                    })
                end,
                set_light_mode = function()
                    vim.api.nvim_set_option("background", "light")
                    github_theme.setup({
                        theme_style = "light",
                    })
                    lualine.setup({
                        options = {
                            theme = "github_light",
                        },
                    })
                end,
            })
            auto_dark_mode.init()
        end,
    },
}
