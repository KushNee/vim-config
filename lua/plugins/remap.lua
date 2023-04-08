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
				c = { "<cmd>nohlsearch<CR>", "Cancel highlight" },
				f = {
					name = "find",
					f = { "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>", "file browser" },
					g = { "<cmd>lua require'telescope.builtin'.live_grep()<CR>", "find line" },
					b = { "<cmd>lua require'telescope.builtin'.buffers()<CR>", "find buffer" },
					h = { "<cmd>lua require'telescope.builtin'.help_tags()<CR>", "find tag" },
					r = { "<cmd>lua require'telescope.builtin'.oldfiles({cwd_only=true})<CR>", "find recent file cwd only" },
					R = { "<cmd>lua require'telescope.builtin'.oldfiles()<CR>", "find recent file globally" },
					t = {
						"<cmd>lua require'telescope'.extensions.tele_tabby.list(require('telescope.themes').get_ivy())<CR>",
						"find tab",
					},
					l = { "<cmd>lua require'telescope'.extensions.heading.heading()<CR>", "find heading" },
					p = { "<cmd>lua require('telescope').extensions.project.project()<CR>", "find project" },
                    z = { "<cmd>lua require('telescope').extensions.zoxide.list(require('telescope.themes').get_ivy())<CR>", "autojump" },
				},
				g = {
					name = "git",
					f = { "<cmd>lua require('neogit').open({ kind = 'floating' })<CR>", "open floating panel" },
					v = { "<cmd>lua require('neogit').open({ kind = 'vsplit' })<CR>", "open vsplit panel" },
				},
				w = {
					name = "windows",
					s = { ":split<Return><C-w>w", "split window" },
					v = { ":vsplit<Return><C-w>w", "vsplit window" },
					p = {
						function()
                            local picker = require('window-picker')
							local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
							vim.api.nvim_set_current_win(picked_window_id)
						end,
						"pick a window",
					},
				},
				d = { '"_d', "Delete without yank" },
				l = {
					name = "lsp",
					f = { "<cmd>lua vim.lsp.buf.format({ timeout_ms = 2003 })<CR>", "format" },
					o = { "<cmd>Lspsaga outline<CR>", "toogle outline" },
					p = { "<cmd>Lspsaga peek_definition<CR>", "peek definition" },
					d = { "<cmd>Lspsaga goto_definition<CR>", "go to definition" },
				},
				t = {
					name = "tab",
					e = { ":tabedit", "edit specified file in new tab" },
					n = { ":tabnew<CR>", "create new tab" },
					d = { ":tabclose<CR>", "close tab" },
				},
				n = {
					name = "neo-tree",
                    f = { ":Neotree<CR>", "move focus to neo-tree" },
					t = { ":Neotree toggle<CR>", "toggle neo-tree, and move to panel" },
					s = { ":Neotree show toggle<CR>", "toggle show neo-tree" },
				},
			}, { prefix = "<leader>" })

			require("which-key").register({
				c = {
					name = "comment",
				},
			}, { prefix = ";" })

			require("which-key").register({
				["'"] = { ":WhichKey<CR>", "show keys" },
				["<Tab>"] = { ":tabnext<CR>", "next tab" },
				["<S-Tab>"] = { ":tabprev<CR>", "previous tab" },
				K = { "<cmd>Lspsaga hover_doc<CR>", "show info" },
				["<M-CR>"] = { "<cmd>Lspsaga code_action<CR>", "code action" },
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
}
