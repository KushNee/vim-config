vim.opt.autowriteall=true
vim.opt.nu=true
vim.opt.relativenumber=true
vim.opt.syntax='enable'
vim.opt.encoding = 'utf-8'
vim.opt.title=true
vim.opt.scrolloff=10
vim.opt.autoindent=true
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.backupskip='/tmp/*,/private/tmp/*'
vim.opt.completeopt='menu,menuone,noselect'
vim.opt.inccommand='split'
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.smartindent=true
vim.opt.ai=true
vim.opt.si=true
vim.opt.backspace='start,eol,indent'
vim.opt.termguicolors=true
vim.opt.wildmode = "longest:full"

vim.opt.cursorline=true
vim.opt.suffixesadd='.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md'
vim.opt.guifont='JetBrainsMono Nerd Font:h15'
vim.opt.pumblend=5

vim.g.mapleader=' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- connect to system clipboard
vim.opt.clipboard:append("unnamedplus")

if vim.g.neovide then
  vim.g.neovide_input_macos_alt_is_meta = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_animate_in_insert_mode = false
end
