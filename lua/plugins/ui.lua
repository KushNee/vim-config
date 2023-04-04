return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "github-nvim-theme" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		tag = "v0.0.7",
		config = function()
			require("github-theme").setup({
				theme_style = "light",
			})
		end,
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
			auto_dark_mode.setup({
				update_interval = 1000,
				set_dark_mode = function()
					vim.api.nvim_set_option("background", "dark")
					require("github-theme").setup({
						theme_style = "dark",
					})
				end,
				set_light_mode = function()
					vim.api.nvim_set_option("background", "light")
					require("github-theme").setup({
						theme_style = "light",
					})
				end,
			})
			auto_dark_mode.init()
		end,
	},
}
