vim.opt.swapfile = false
vim.opt.autowriteall = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.syntax = 'enable'
vim.opt.encoding = 'utf-8'
vim.opt.title = true
vim.opt.scrolloff = 10
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.termguicolors = true
vim.opt.wildmode = "longest:full"

vim.opt.cursorline = true
vim.opt.suffixesadd = '.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md'
vim.opt.guifont = 'JetBrainsMono Nerd Font:h15'
vim.opt.pumblend = 5

vim.g.mapleader = ' '

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

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Set indentation to 2 spaces
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript',
    'yaml', 'lua', 'markdown'
  },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

if vim.g.neovide then
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_animate_in_insert_mode = false

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end

  -- disable neovide's self black background
  vim.g.neovide_transparency = 0.0

  local neovide_transparency = false
  if neovide_transparency then
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.transparency = 0.7
  else
    vim.g.transparency = 1.0
  end

  vim.g.neovide_background_color = "#002b36" .. alpha()

  local function set_ime(args)
    if args.event:match("Enter$") then
      vim.g.neovide_input_ime = true
    else
      vim.g.neovide_input_ime = false
    end
  end

  local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime
  })

  vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime
  })
end
