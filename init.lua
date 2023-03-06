vim.opt.autowriteall=true
vim.opt.relativenumber=true
vim.o.syntax='enable'
vim.o.encoding = 'utf-8'
vim.o.title=true
vim.o.scrolloff=10
vim.o.autoindent=true
vim.o.expandtab=true
vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.shell='fish'
vim.o.backupskip='/tmp/*,/private/tmp/*'
vim.o.completeopt='menu,menuone,noselect'
vim.o.inccommand='split'
vim.o.ignorecase=true
vim.o.smartcase=true
vim.o.ai=true
vim.o.si=true
vim.o.backspace='start,eol,indent'
vim.o.termguicolors=true

vim.o.cursorline=true
vim.g.mapleader=' '
vim.o.suffixesadd='.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md'
vim.o.guifont='JetBrainsMono Nerd Font:h15'
vim.o.pumblend=5


require('plugins')
require('macos')
require('maps')

-- config for nvim-tree
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
