return {
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
    config = true,
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
  {
    "folke/noice.nvim",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true,    -- use a classic bottom cmdline for search
          command_palette = true,  -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,      -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,  -- add a border to hover docs and signature help
        },
      })
    end,
  },
  -- {
  --   "VonHeikemen/fine-cmdline.nvim",
  --   dependencies = {"MunifTanjim/nui.nvim"},
  -- },
  -- {
  --   "VonHeikemen/searchbox.nvim",
  --   dependencies = {"MunifTanjim/nui.nvim"},
  -- }
}
