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
  -- key mapping cheatsheet
  use 'folke/which-key.nvim'
  -- startup dashboard
  use 'mhinz/vim-startify'
  -- markdown
  use { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end, ft = {'markdown'}}
  -- org-mode
  use {'kristijanhusak/orgmode.nvim'}
  -- colorscheme
  use 'navarasu/onedark.nvim'
  -- enhanced motion
  use 'ggandor/lightspeed.nvim'
  -- enhanced term experience
  use 'akinsho/nvim-toggleterm.lua'
end)
