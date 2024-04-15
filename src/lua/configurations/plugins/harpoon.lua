-- Settings for
-- harpoon
--
-- [Resources]
-- - https://github.com/ThePrimeagen/harpoon

-- Set up block.lua
local harpoon = require('harpoon')

-- Setup Harpoon
harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
    },
})

harpoon:extend({
  UI_CREATE = function(cx)
    vim.keymap.set("n", "<C-v>", function()
      harpoon.ui:select_menu_item({ vsplit = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-x>", function()
      harpoon.ui:select_menu_item({ split = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-t>", function()
      harpoon.ui:select_menu_item({ tabedit = true })
    end, { buffer = cx.bufnr })
  end,
})

-- Setup basic Telescope configuration for harpoon with Telescope UI
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

-- Set Harpoon Keybindings

--- Harpoon List
vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end, { desc = "Adds current file into the buffer list" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })

--- Harpoon Index Selection/Jumping
-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Switch to the 1st buffer item"})
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Switch to the 2nd buffer item"})
--- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Switch to the 3rd buffer item"})
--- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Switch to the 4th buffer item"})

--- Toggle previous & next buffers stored within Harpoon list
--- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Toggle the previous buffer stored within harpoon's list"})
--- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Toggle the next buffer stored within harpoon's list"})
vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end, { desc = "Toggle the previous buffer stored within harpoon's list"})
vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end, { desc = "Toggle the next buffer stored within harpoon's list"})

