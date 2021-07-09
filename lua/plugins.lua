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
  use 'cohama/lexima.vim'
  -- statusline
  use { 'hoob3rt/lualine.nvim', requires = {{'kyazdani42/nvim-web-devicons'}}}
  -- tabline
  use { 'crispgm/nvim-tabline'}
  -- file manager
  use {
    'Shougo/defx.nvim',
    requires = {'kristijanhusak/defx-git','kristijanhusak/defx-icons'},
    run= ':UpdateRemotePlugins' 
  }
  -- lsp
  use { 'glepnir/lspsaga.nvim', requires= {{'neovim/nvim-lspconfig'}} }
  use 'folke/lsp-colors.nvim'
  use 'nvim-lua/completion-nvim'
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
  use 'vhyrro/neorg'
  -- colorscheme
  use 'navarasu/onedark.nvim'
  -- enhanced motion
  use 'ggandor/lightspeed.nvim'
end)
