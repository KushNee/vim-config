return {
    {
        "tiagovla/scope.nvim",
        config = function()
            require("scope").setup {}
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    icons_enable = true,
                    theme = "solarized_dark",
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
        'svrana/neosolarized.nvim',
        dependencies = { 'tjdevries/colorbuddy.nvim' },
        config = function()
            require('neosolarized').setup({
                comment_italics = true,
                background_set = false,
            })
        end
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
}
