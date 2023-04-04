return {
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
          'nvim-lua/plenary.nvim'
        },
        config = function ()
          require("gitsigns").setup({
            current_line_blame = true,
          })
        end
    },
    {
      "echasnovski/mini.pairs",
      config = function ()
        require("mini.pairs").setup()
      end
    },
    {
      'nvim-treesitter/nvim-treesitter',
      build= ':TSUpdate',
      config = function()
        require("nvim-treesitter.configs").setup {
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
              "tsx",
              "toml",
              "bash",
              "fish",
              "json",
              "yaml",
              "html",
              "scss",
              "go",
              "gomod",
              "python",
              "lua",
              "vim",
              "regex",
              "markdown",
              "markdown_inline"
            },
        }

        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
      end
    },
    { 'ggandor/lightspeed.nvim' },
    {
      "echasnovski/mini.comment",
      config = function ()
        require("mini.comment").setup()
      end
    },
    { "lukas-reineke/indent-blankline.nvim" },
}
