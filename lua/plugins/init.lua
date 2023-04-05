return {
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				window = {
					position = "top",
				},
			})
			require("which-key").register({
				f = {
					name = "find",
					f = { "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>", "file browser" },
					g = { "<cmd>lua require'telescope.builtin'.live_grep()<CR>", "find line" },
					b = { "<cmd>lua require'telescope.builtin'.buffers()<CR>", "find buffer" },
					h = { "<cmd>lua require'telescope.builtin'.help_tags()<CR>", "find tag" },
					r = { "<cmd>lua require'telescope.builtin'.oldfiles()<CR>", "find recent file" },
					t = {
						"<cmd>lua require'telescope'.extensions.tele_tabby.list(require('telescope.themes').get_ivy())<CR>",
						"find tab",
					},
					l = { "<cmd>lua require'telescope'.extensions.heading.heading()<CR>", "find heading" },
          p = { "<cmd>lua require('telescope').extensions.project.project()<CR>", "find project"},
				},
				g = {
					name = "git",
					f = { "<cmd>lua require('neogit').open({ kind = 'floating' })<CR>", "open floating panel" },
					v = { "<cmd>lua require('neogit').open({ kind = 'vsplit' })<CR>", "open vsplit panel" },
				},
				q = { "<cmd>wqall<CR>", "Save and Leave" },
				w = { "<cmd>w<CR>", "Save" },
				d = { '"_d', "Delete without yank" },
				l = {
					name = "lsp",
					f = { "<cmd>lua vim.lsp.buf.format({ timeout_ms = 2003 })<CR>", "format" },
				},
				t = {
					name = "tab",
					e = { ":tabedit", "edit specified file in new tab" },
					n = { ":tabnew<CR>", "create new tab" },
					d = { ":tabclose<CR>", "close tab" },
				},
        n = {
          name = "neo-tree",
          t = { ":Neotree toggle<CR>", "toggle neo-tree, and move to panel"},
          s = { ":Neotree show toggle<CR>", "toggle show neo-tree"},
        }
			}, { prefix = "<leader>" })

			require("which-key").register({
				l = { "<cmd>nohlsearch<CR>", "Cancel highlight" },
				c = {
					name = "comment",
				},
			}, { prefix = ";" })

			require("which-key").register({
				["'"] = { ":WhichKey<CR>", "show keys" },
				w = {
					name = "windows",
					h = { "<C-w>h", "left window" },
					k = { "<C-w>k", "upper window" },
					j = { "<C-w>j", "below window" },
					l = { "<C-w>l", "right window" },
					s = { ":split<Return><C-w>w", "split window" },
					v = { ":vsplit<Return><C-w>w", "vsplit window" },
				},
				["<C-a>"] = { "gg<S-v>G", "select all" },
				["<Tab>"] = { ":tabnext<CR>", "next tab" },
				["<S-Tab>"] = { ":tabprev<CR>", "previous tab" },
				K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "show info" },
			})

			require("which-key").register({
				j = {
					k = { "<esc>", "back to normal" },
				},
			}, {
				mode = "i",
			})
		end,
	},
	{
		"folke/neodev.nvim",
		config = function()
			-- need setup neodev BEFORE lspconfig
			require("neodev").setup({})
		end,
	},
}
