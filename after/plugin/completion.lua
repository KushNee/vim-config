local exist, _ = pcall(require, "completion")
if (not exist) then return end

vim.opt.completeopt = {"menuone", "noinsert", "noselect"}

local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_next_tab()
  return vim.fn.pumvisible() == 1 and t"<C-n>" or t"<Tab>"
end

function _G.smart_previous_tab()
  return vim.fn.pumvisible() == 1 and t"<C-p>" or t"<S-Tab>"
end

function _G.smart_choose()
  return vim.fn.pumvisible() == 1 and (vim.fn.complete_info({"selected"}) ~= "-1" and t"<Plug>(completion_confirm_completion)" or t"<c-e><CR>") or t"<CR>"
end

local opt = { expr = true, noremap = true }

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.smart_next_tab()", opt)
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.smart_previous_tab()", opt)

vim.g.completion_confirm_key = ""
vim.api.nvim_set_keymap("i", "<cr>", "v:lua.smart_choose()", { expr = true })
