return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} 
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        dependencies = {"kkharji/sqlite.lua"}

    },
    { 
        "nvim-telescope/telescope-file-browser.nvim" 
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
    },
    {
        'TC72/telescope-tele-tabby.nvim'
    },
    {
        'crispgm/telescope-heading.nvim'
    }
}