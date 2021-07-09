local exist, orgmode = pcall(require, "orgmode")
if (not exist) then return end

orgmode.setup {
  org_agenda_files = {"~/org/*"}
}
