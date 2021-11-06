local exist, preview = pcall(require, 'markdown-preview.nvim')
if (not exist) then return end

  vim.g.mkdp_browser = 'firefox'
