-- Place all your plugin manager and plugins here

--- Ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/lazy/lazy.nvim'
-- local install_path = fn.stdpath('data') .. '/lazy/lazy.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
if not vim.loop.fs_stat(install_path) then
    LAZY_BOOTSTRAP = fn.system({'git', 'clone', "--filter=blob:none", "--branch=stable", 'https://github.com/folke/lazy.nvim.git', install_path})
    print("Installing package manager, please close and reopen Neovim...")
end

--- Pre-pend run-time path (rtp)
vim.opt.runtimepath:prepend(install_path)

---- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup lazy_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | Lazy sync 
  augroup end
]])

---- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

---- Initialize module variables
local lazy = require'lazy'

--- Design plugins
plugins = {
	-- Add plugins here

    --- package management itself
    "folke/lazy.nvim",

    --- General useful
    "rhysd/vim-grammarous", --- Grammar Checking
    "tpope/vim-vinegar", --- Lightweight File Browser for Neovim

    --- Quality of Life
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'configurations.plugins.alpha'
        end
    },
    "folke/which-key.nvim", --- WhichKey Keymapping finder
    {"romgrk/barbar.nvim", dependencies = {'nvim-tree/nvim-web-devicons'},}, --- Neovim Tabline plugin
    {
        "nvim-tree/nvim-tree.lua", 
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require"configurations.plugins.nvim-tree"
        end
    }, --- NvimTree Tree File Explorer for Neovim
    {
        --- Code Block Visualizer
        "HampusHauffman/block.nvim",
        build = ':BlockOn',
        config = function()
            require'configurations.plugins.block'
        end
    },
    {
        --- Neovim + Org Mode-like implementation
        "nvim-orgmode/orgmode",
        dependencies = {'nvim-treesitter/nvim-treesitter'},
        config = function()
            require'configurations.plugins.orgmode'
        end
    },

    --- General Development
    {
        --- Integrates the tree-sitter library for incremental parsing of buffers
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require'configurations.plugins.treesitter'
        end
    },
    'andymass/vim-matchup', --- Matching parenthesis, brackets etc.
    'bronson/vim-trailing-whitespace', --- Highlight trailing spaces
    'scrooloose/nerdcommenter', -- Commenting shortcuts
    'tpope/vim-surround', --- Stylishly Surrounds highlighted string with a delimiter/character

    --- Terminal Customization
    {
        'akinsho/toggleterm.nvim',
        config = function()
            require'configurations.plugins.toggleterm'
        end
    },

    --- Features
    {
        --- File Manager/Explorer like a buffer
        -- Package Definition
        'stevearc/oil.nvim',
        opts = {},
        -- Optional Dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- Configurations
        config = function()
            require'configurations.plugins.oil'
        end
    },

    --- Markdown file support
    {
        --- Image drag-and-drop to markdown file
        'HakonHarnes/img-clip.nvim',
        --- event = "BufEnter",
        opt = {
            -- Add options here
            -- or leave it empty to use the default settings
        },
        keys = {
            -- suggested keymapping
            --- Paste image hyperlink into markdown file using <leader>p
            { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste clipboard image" },
        },
        config = function()
            require'configurations.plugins.img-clip'
        end
    },

    --- Git
    'tpope/vim-fugitive', -- Git commands
    'rhysd/git-messenger.vim', --- Shows the history of commits under the cursor in popup window
    {'lewis6991/gitsigns.nvim', dependencies = {'nvim-lua/plenary.nvim'},}, --- Git added/removed in sidebar + inline blame; aka changes made to files are represented

    --- Colorschemes
    {'catppuccin/nvim', name = "catppuccin"},
    'marko-cerovac/material.nvim',
    'folke/tokyonight.nvim',
    'EdenEast/nightfox.nvim',
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require'configurations.plugins.cyberdream'
        end
    },
    {
        "diegoulloao/neofusion.nvim",
        priority = 1000 ,
        config = function()
            require'configurations.plugins.neofusion'
        end
    },

    --- Language Packs
    'sheerun/vim-polyglot',

    --- Snippets
    {
        'L3MON4D3/LuaSnip',
        config = function()
            require'configurations.plugins.luasnip'
        end
    },

    --- Lua configurations
    {
        'folke/neodev.nvim',
        opts = {},
        config = function()
            require'configurations.plugins.neodev'
        end
    },

    --- Native LSP
    {
        'neovim/nvim-lspconfig', --- Neovim Lua LSP integration configuration
        config = function()
            require'configurations.plugins.nvim-lspconfig'
        end
    },
    'glepnir/lspsaga.nvim', --- LSP plugin for highly performant UI features

    --- LSP Autocomplete
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require'configurations.plugins.nvim-cmp'
        end
    }, --- Neovim Lua LSP Autocompletion engine
    'hrsh7th/cmp-nvim-lsp', --- Neovim Lua vim API LSP server
    'hrsh7th/cmp-buffer',   --- nvim-cmp autocompletion via buffer support
    'hrsh7th/cmp-path',     --- nvim-cmp autocompletion via path support

    --- UNIX support
    'tpope/vim-eunuch', --- UNIX shell command wrapper

    --- Filetype support
    ---- Markdown
    {
        "ellisonleao/glow.nvim",
        cmd = "Glow",
        config = function()
            require'configurations.plugins.glow'
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        -- build = function() vim.fn["mkdp#util#install"]() end,
        build = "cd app && npm install",
        config = function()
            require'configurations.plugins.markdown-preview'
        end
    },

    --- Buffer Navigation/Status line/bar
    'vim-airline/vim-airline', --- Status bar
    'vim-airline/vim-airline-themes', --- Themes for the status bar/statusline 'vim-airline'
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require('configurations.plugins.harpoon')
        end
    }, --- Harpoon: Buffer fuzzy finder/jumper

    --- Telescope Requirements/Dependencies
    {'nvim-telescope/telescope.nvim', dependencies={{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},}, -- Fuzzy file finder for Neovim written in Lua

    --- Telescope
    'nvim-telescope/telescope-fzf-native.nvim', --- FZF support for Telescope
    {'nvim-telescope/telescope-file-browser.nvim', dependencies = {'nvim-lua/plenary.nvim'},}, --- File Browser plugin for Telescope

    --- Dependencies
    'nvim-lua/popup.nvim', -- Popup for other plugins, usually a dependency
    'nvim-lua/plenary.nvim', -- Avoids callbacks, used by other plugins, usually a dependency
    'nvim-tree/nvim-web-devicons', -- Lua fork of vim-devicons, provides the same icons as well as colors for each icon, usually a dependency

    --- Wrappers
    'kassio/neoterm', --- Wrapper of some vim/neovim's :terminal functions

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    --if LAZY_BOOTSTRAP then
    --    require('lazy').sync()
    --end
}

local opts = {
    ui = {
        -- a number <1 is a percentage., >1 is a fixed size
        size = { width = 0.8, height = 0.8 },
        wrap = true, -- wrap the lines in the ui
        -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
        border = "none",
        icons = {
          cmd = " ",
          config = "",
          event = "",
          ft = " ",
          init = " ",
          import = " ",
          keys = " ",
          lazy = "󰒲 ",
          loaded = "●",
          not_loaded = "○",
          plugin = " ",
          runtime = " ",
          source = " ",
          start = "",
          task = "✔ ",
          list = {
            "●",
            "➜",
            "★",
            "‒",
          },
        },
    }
}

--- Startup and add configure plugins
lazy.setup(plugins, opts)

-- Sourcing configuration files

--- LSP and Autocompletion

--- Others

