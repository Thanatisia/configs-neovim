-- Configurations 
-- for 
-- Keybindings

-- Setting Keybindings:
-- vim.keymap.set('<mode (n|v|i)>', '<keybind>', '<command>', {option-keys=values})
vim.keymap.set('n', "<leader>e", "<Cmd>NvimTreeToggle<CR>", {silent=true}) -- Set nvim-tree toggle on '<leader>-e' keypress
vim.keymap.set('n', "<leader>f", "<Cmd>Telescope fd<CR>", {silent=true, desc="Open Telescope fd Fuzzy File searcher"})
