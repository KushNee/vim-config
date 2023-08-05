return {
    {
        'renerocksai/telekasten.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('telekasten').setup({
                home = vim.fn.expand("~/Plain_Knowledge_Base"), -- Put the name of your notes directory here
            })
        end
    },
    {
        "toppair/peek.nvim",
        event = { "BufRead", "BufNewFile" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup({
                app = "browser",
                filetype = { "markdown", "telekasten" }
            })
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },
}
