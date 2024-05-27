--- Configuration File for
--- Colorscheme: neofusion

-- Import libraries/dependencies
neofusion = require('neofusion')

-- Setup plugin configurations
neofusion.setup({
    -- Default options:
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

-- For lualine support
-- require("lualine").setup({
--  options = {
--    theme = require("neofusion.lualine"),
--    -- rest,
--  }
-- })


