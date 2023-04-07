return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local global_theme = "ivy"

			telescope.setup({
				defaults = {
					mappings = {
						n = {
							["q"] = actions.close,
						},
					},
				},
				pickers = {
					live_grep = {
						theme = global_theme,
					},
					oldfiles = {
						theme = global_theme,
					},
					buffers = {
						theme = global_theme,
					},
					help_tags = {
						theme = global_theme,
					},
				},
				extensions = {
					file_browser = {
						theme = global_theme,
					},
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
						-- the default case_mode is "smart_case"
					},
					tele_tabby = {
						use_highlighter = true,
					},
					heading = {
						treesitter = true,
					},
				},
			})

			telescope.load_extension("project")
			telescope.load_extension("tele_tabby")
			telescope.load_extension("fzf")
			telescope.load_extension("file_browser")
			telescope.load_extension("heading")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	{
		"nvim-telescope/telescope-project.nvim",
	},
	{
		"TC72/telescope-tele-tabby.nvim",
	},
	{
		"crispgm/telescope-heading.nvim",
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
                use_libuv_file_watcher = true,
				filesystem = {
					hijack_netrw_behavior = "open_default",
				},
				window = {
					mappings = {
                        ["<space>"] = "none",
						["<Tab>"] = {
							"toggle_node",
						},
					},
				},
			})
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		config = function()
			require("window-picker").setup({})
		end,
	},
}
