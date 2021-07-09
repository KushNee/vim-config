local chadtree_settings = { 
  ["view.width"] = 40,
  ["theme.text_colour_set"] = "nord",
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

vim.api.nvim_set_keymap("n", "wf", ":CHADopen<CR>", {})
