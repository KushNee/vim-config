return {
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').register({
        f = {
          name = "find",
          f = { "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>", "file browser" },
          g = { "<cmd>lua require'telescope.builtin'.live_grep()<CR>", "find line" },
          b = { "<cmd>lua require'telescope.builtin'.buffers()<CR>", "find buffer" },
          h = { "<cmd>lua require'telescope.builtin'.help_tags()<CR>", "find tag" },
          r = { "<cmd>lua require'telescope'.extensions.frecency.frecency()<CR>", "find recent file" },
          t = { "<cmd>lua require'telescope'.extensions.tele_tabby.list()<CR>", "find tab" },
          l = { "<cmd>lua require'telescope'.extensions.heading.heading()<CR>", "find heading" },
        },
        q = { "<cmd>wqall<CR>", "Save and Leave" },
        w = { "<cmd>w<CR>", "Save" },
        l = { "<cmd>nohlsearch<CR>", "Cancel highlight" },
        d = { "\"_d", "Delete without yank" },
      }, { prefix = "<leader>" })
    end
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
}
