-- Configurations 
-- for 
-- Keybindings

-- Setting Keybindings:
-- vim.keymap.set('<mode (n|v|i)>', '<keybind>', '<command>', {option-keys=values})
vim.keymap.set('n', "<leader>e", "<Cmd>NvimTreeToggle<CR>", {silent=true}) -- Set nvim-tree toggle on '<leader>-e' keypress

