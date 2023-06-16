-- Lua autocommands and functions for Neovim

--- Functions
local function OpenNeovimRC()
    --- Edit Neovim RC Config file
    local rc_filepath = vim.fn.stdpath('config')
    local rc_filename = rc_filepath .. '/init.lua' -- Get Neovim config file location

    --- Open Neovim RC config file
    vim.cmd.edit(rc_filepath)
end

--- User Commands (Command Mode)
vim.api.nvim_create_user_command('EditNeovimRC', OpenNeovimRC, {});

--- Autocommands

