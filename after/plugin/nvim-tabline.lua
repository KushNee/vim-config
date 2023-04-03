local exist, tabline = pcall(require, 'tabline')
if (not exist) then return end

tabline.setup {
  show_index = true,        -- show tab index
  show_modify = true,       -- show buffer modification indicator
  show_icon = false,        -- show file extension icon
  modify_indicator = '[+]', -- modify indicator
  no_name = 'No name',      -- no name buffer name
  brackets = { '[', ']' },  -- file name brackets surrounding
}
