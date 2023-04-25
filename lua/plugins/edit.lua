return {
    {
        "lewis6991/gitsigns.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
            })
        end,
    },
    {
        "echasnovski/mini.pairs",
        config = function()
            require("mini.pairs").setup()
        end,
    },
    {
        "TornaxO7/tree-setter",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                    disable = {},
                    additional_vim_regex_highlighting = { "markdown" },
                },
                indent = {
                    enable = false,
                    disable = {},
                },
                ensure_installed = {
                    -- frontend
                    "css",
                    "scss",
                    "html",
                    "javascript",
                    "typescript",
                    "tsx",

                    "kdl",
                    "toml",
                    "bash",
                    "fish",
                    "json",
                    "yaml",

                    "go",
                    "gomod",

                    "rust",
                    "zig",
                    "python",
                    "lua",

                    "vim",
                    "regex",
                    "markdown",
                    "markdown_inline",
                },
                tree_setter = {
                    enable = true
                },
            })

            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
        end,
    },
    {
        "ggandor/flit.nvim",
        dependencies = {
            "ggandor/leap.nvim",
        },
        config = function()
            require("flit").setup({
                keys = { f = "f", F = "F", t = "t", T = "T" },
                -- A string like "nv", "nvo", "o", etc.
                labeled_modes = "nv",
                multiline = true,
                -- Like `leap`s similar argument (call-specific overrides).
                -- E.g.: opts = { equivalence_classes = {} }
                opts = {},
            })
        end,
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").add_default_mappings()
        end,
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({
                ignore = "^$",
                toggler = {
                    line = ";cc",
                    block = ";cb",
                },
                opleader = {},
                extra = {
                    above = ";cO",
                    below = ";co",
                    eol = ";cA",
                },
                mappings = {
                    basic = true,
                    extra = true,
                },
            })
        end,
    },
    { "lukas-reineke/indent-blankline.nvim" },
    {
        "TimUntersberger/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("neogit").setup({
                disable_commit_confirmation = true,
            })
        end,
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<c-\>]],
            })
        end
    },
}
