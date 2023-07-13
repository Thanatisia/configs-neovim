-- Settings for
-- orgmode
--
-- [Resources]
-- - https://github.com/nvim-orgmode/orgmode
--
-- [Documentations]
-- - Open Agenda prompt: <Leader>oa
-- - Open Capture prompt: <Leader>oc

-- Set up block.lua
local orgmode = require'orgmode'

-- Directory path
local notes = "~/notes";
local work = notes .. "/work";
local home = notes .. "/home";

--- Load custom treesitter grammar for org filetype
orgmode.setup_ts_grammar()

--- Orgmode setup
orgmode.setup({
    --- Configurations here
    org_agenda_files = {'~/notes/**/*'}, --- Documents, Notes and files
    org_default_notes_file = "~/notes/org/index.org",
})


