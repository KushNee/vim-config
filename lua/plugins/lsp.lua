return {
    {
        "folke/neodev.nvim",
        config = function()
            -- need setup neodev BEFORE lspconfig
            require("neodev").setup({})
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local servers = { "gopls", "pyright", "marksman", "lua_ls", "jsonls", "zls", "rust_analyzer", "tsserver" }

            for _, lsp in pairs(servers) do
                lspconfig[lsp].setup({
                })
            end
            lspconfig["lua_ls"].setup({
                settings = {
                    Lua = {
                        completion = {
                            -- Used by neodev.nvim
                            callSnippet = "Replace",
                        },
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = { 'vim' },
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup()
        end,
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "glepnir/lspsaga.nvim",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({})
        end,
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" },
        },
    },
}
