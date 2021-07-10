local exist, autopairs = pcall(require, "nvim-autopairs")
if (not exist) then return end

autopairs.setup()

require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
})


_G.smart_confirm = function()
  return vim.fn['compe#confirm'](autopairs.autopairs_cr())
end

vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.smart_confirm()', { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-e>', "compe#close('<C-e>')", { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { expr = true, silent = true, noremap = true })
