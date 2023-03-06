vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerSync]])
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- autopairs
  use 'windwp/nvim-autopairs'
  -- statusline
  use { 'nvim-lualine/lualine.nvim', requires = {{'kyazdani42/nvim-web-devicons'}}}
  -- tabline
  use { 'crispgm/nvim-tabline'}
  -- file manager
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
        require'nvim-tree'.setup {}
      end
  }
  -- lsp
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    require("mason").setup{},
    require("mason-lspconfig").setup{}
  }
  -- auto complete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- syntax highlight
  use { 'nvim-treesitter/nvim-treesitter', run= ':TSUpdate' }
  -- fuzzy finder
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use { "nvim-telescope/telescope-frecency.nvim", requires = {"tami5/sqlite.lua"}}
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'TC72/telescope-tele-tabby.nvim'}
  -- key mapping cheatsheet
  use 'folke/which-key.nvim'
  -- markdown
  use { 
    "euclio/vim-markdown-composer",
    config = function()
      vim.g.markdown_composer_autostart = 0
    end
  }
  use {
    'ekickx/clipboard-image.nvim'
  }
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  })
  -- obsidian
  use {
    'epwalsh/obsidian.nvim',
    config = function()
      require("obsidian").setup({
        dir = "~/second-brain",
        completion = {
        nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
        }
      })
    end
  }
  -- auto change background
  use {
    'f-person/auto-dark-mode.nvim',
    config = function()
      local auto_dark_mode = require('auto-dark-mode')

      auto_dark_mode.setup({
      	update_interval = 1000,
      	set_dark_mode = function()
      		vim.api.nvim_set_option('background', 'dark')
      		vim.cmd('colorscheme onedark')
      	end,
      	set_light_mode = function()
      		vim.api.nvim_set_option('background', 'light')
      		vim.cmd('colorscheme onedark')
      	end,
      })
      auto_dark_mode.init()
    end
  }
  -- colorscheme
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup  {
        -- Main options --
        style = 'light', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = false,  -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },

        -- Lualine options --
        lualine = {
            transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true,   -- use undercurl instead of underline for diagnostics
            background = true,    -- use background color for virtual text
        },
      }
    end
  }
  -- enhanced motion
  use 'ggandor/lightspeed.nvim'
  -- enhanced term experience
  use 'akinsho/nvim-toggleterm.lua'
  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- snippet
  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }

  use "lukas-reineke/indent-blankline.nvim"

end)
