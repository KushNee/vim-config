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
  use { 'hoob3rt/lualine.nvim', requires = {{'kyazdani42/nvim-web-devicons'}}}
  -- tabline
  use { 'crispgm/nvim-tabline'}
  -- file manager
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }
  -- lsp
  use { 'glepnir/lspsaga.nvim', requires= {{'neovim/nvim-lspconfig'}} }
  use 'folke/lsp-colors.nvim'
  -- auto complete
  use 'hrsh7th/nvim-compe'
  -- syntax highlight
  use { 'nvim-treesitter/nvim-treesitter', run= ':TSUpdate' }
  -- fuzzy finder
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use { "nvim-telescope/telescope-frecency.nvim", requires = {"tami5/sqlite.lua"}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'TC72/telescope-tele-tabby.nvim'}
  -- key mapping cheatsheet
  use 'folke/which-key.nvim'
  -- markdown
  use { 'plasticboy/vim-markdown', requires = 'godlygeek/tabular' }
  use { 'mzlogin/vim-markdown-toc' }
  use({'jakewvincent/mkdnflow.nvim',
     config = function()
        require('mkdnflow').setup({
            -- Config goes here; leave blank for defaults
        })
     end
  })
  use { 'euclio/vim-markdown-composer' }
  -- colorscheme
  use 'navarasu/onedark.nvim'
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

end)
