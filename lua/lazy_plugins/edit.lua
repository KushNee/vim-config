return {
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
          'nvim-lua/plenary.nvim'
        },
    },
    {
      "windwp/nvim-autopairs"
    },
    { 'nvim-treesitter/nvim-treesitter', build= ':TSUpdate' },
    { 'ggandor/lightspeed.nvim' },
    { 'numToStr/Comment.nvim' },
    { "lukas-reineke/indent-blankline.nvim" },
}