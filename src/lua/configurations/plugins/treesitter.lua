-- Configurations for
-- Neovim Treesitter Plugin

treesitter_cfgs = require('nvim-treesitter.configs')

treesitter_cfgs.setup {
    --- Treesitter Configurations

    -- Ensure that the following Treesitter languages are installed; Equivalent to running ':TSUpdate [language]'
    ensure_installed = {'bash', 'c', 'cpp', 'java', 'javascript', 'lua', 'markdown', 'nix', 'org', 'python', 'query', 'rust', 'sql', 'vim', 'vimdoc', 'yaml'},

    -- Install parsers synchronously (only applied to 'ensure_installed')
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you dont have 'tree-sitter' CLI installed locally
    auto_install = false,

    -- List of parsers to ignore installing (for "all")
    ignore_install = {},

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/path/to/store/parsers")

    -- Treesitter Highlighting
    highlight = {
        enable = true, --- Enable Highlighting

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = {},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = {'org'}, -- This can be a list of languages, or 'true'
    },
}


