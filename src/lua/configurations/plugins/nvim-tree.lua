-- Settings for
-- Tree Explorer: nvim-tree
-- URL: https://github.com/nvim-tree/nvim-tree.lua

--- Import package
local nvim_tree = require("nvim-tree")

--- Setup 
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
-- vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
nvim_tree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Set Tree Explorer Keybindings
