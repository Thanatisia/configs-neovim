# CHANGELOGS

## Table of Contents
+ [2024-01-03](#2024-01-03)
+ [2024-03-05](#2024-03-05)
+ [2024-03-07](#2024-03-07)
+ [2024-04-15](#2024-04-15)
+ [2024-05-16](#2024-05-16)
+ [2024-05-20](#2024-05-20)

## Logs
### 2024-01-03
#### 1612H
- Mass Update

- New
    - Added new document 'BUILD.md' for building and setup documentations

### 2024-03-05
#### 1628H
- New
    - Added new LSP configuration document 'README.md' in 'src/lua/configurations/lsp/'
    - Added new LSP configuration lua script 'tsserver.lua' in 'src/lua/configurations/lsp/' for the Javascript/Typescript Language Server
    - Added new Plugin configuration lua scripts in 'src/lua/configurations/plugins/'
        + alpha.lua
        + cyberdream.lua
        + img-clip.lua
- Updates
    - Updated Plugin configuration lua script(s) in 'src/lua/configurations/plugins/'
        - block.lua
            + Enabled plugin
        - treesitter.lua
            + Added new default installs
    - Updated lua scripts in 'src/lua/'
        - lsp.lua
            + Added new LSP configuration lua script imports
        - plugins.lua
            + Added plugins 'alpha.nvim', 'img-clip.nvim' and colorscheme 'cyberdream'
        - settings.lua
            + Added cyberdream colorscheme

#### 2046H
- New
    + Added new lua script 'glow.lua' in 'src/lua/configurations/plugins/' for the glow.nvim markdown file viewer plugin
- Updates
    - Updated Plugin configuration lua script 'treesitter.lua' in 'src/lua/configurations/plugins/'
        + Added new default installs 
    - Updated lua script 'plugins.lua' in 'src/lua/'
        + Added new markdown-support plugin 'glow.nvim'

#### 2105H
- Updates
    - Updated document 'BUILD.md'
        + Added new plugin dependencies
        + Added new CLI utility dependencies

### 2024-03-07
#### 1507H
- New
    + Added neovim keybindings lua script 'keybindings.lua' in 'src/lua'
    + Added neovim plugin configuration lua script 'nvim-tree.lua' in 'src/lua/configurations/plugins/'

- Updates
    - Updated neovim initialization lua script 'init.lua' in 'src/'
        + Added keybindings.lua to the end
    - Updated neovim plugins lua script 'plugins.lua' in 'src/lua/'
        + Fixed plugin 'nvim-tree' and imported configuration file for 'nvim-tree/nvim-tree'

#### 1514H
- Updates
    - Updated document 'plugins.md'
        + Added list indicators

### 2024-04-15
#### 1504H
- New
    + Added new lua configuration script 'cmp-nvim-lsp.lua' in 'lua/configurations/plugins/' for plugin 'cmp-nvim-lsp'
    + Added new lua configuration script 'harpoon.lua' in 'lua/configurations/plugins/' for plugin 'harpoon'
    + Added new lua configuration script 'markdown-preview.lua' in 'lua/configurations/plugins/' for plugin 'markdown-preview'
    + Added new lua configuration script 'neodev.lua' in 'lua/configurations/plugins/' for plugin 'neodev'

- Updates
    - Updated lua-language-server LSP plugin configuration file 'lua-language-server.lua' in 'lua/configurations/lsp/'
        + Fixed setup configuration table and settings key-value mapping
    - Updated nvim-cmp plugin configuration file 'nvim-cmp.lua' in 'lua/configurations/plugins/'
        + Added nvim_lua: Neovim lua API autocompletion and documentation
        + Added sources to cmdline setup
    - Updated orgmode plugin configuration file 'orgmode.lua' in 'lua/configurations/plugins/'
        + Removed deprecated function
    - Updated treesitter plugin configuration file 'treesitter.lua' in 'lua/configurations/plugins/'
        - Added languages for autoinstallation of treesitter syntaxes
            + dockerfile
            + make
    - Updated lua script 'keybindings.lua' in 'lua/'
        + Added new keymap/keybinding for opening ':Telescope fd'
    - Updated lua script 'plugins.lua' in 'lua/'
        + Added new plugin 'folke/neodev.nvim' : Neovim vim lua API autocompletion and documentations
        + Added new plugin 'iamcco/markdown-preview.nvim' : Markdown file Previewer
        + Added new plugin 'ThePrimeagen/harpoon' : The buffer-file finder/jumper
        + Added comments
    - Updated lua script 'settings.lua' in 'lua/'
        + Moved 'HOME' to 'lua/variables.lua'
    - Updated lua script 'variables.lua' in 'lua/'
        + Moved 'HOME' from 'lua/settings.lua' as an environment variable

### 2024-05-16
#### 1243H
- New
    + Added new lua configuration script 'toggleterm.lua' in 'lua/configurations/plugins/' for plugin 'akinsho/toggleterm.nvim'
- Updates
    - Updated document 'plugins.md'
        + Added new plugins
    - Updated lua script 'plugins.lua' in 'lua/'
        + Added new plugin 'akinsho/toggleterm.nvim' : Terminal Toggler plugin for Neovim

#### 1718H
- New
    + Added new lua configuration script 'oil.lua' in 'lua/configurations/plugins/' for plugin 'stevearc/oil.nvim'
- Updates
    - Updated document 'plugins.md'
        + Added new plugins
    - Updated lua script 'plugins.lua' in 'lua/'
        + Added new plugin 'stevearc/oil.nvim' : Neovim File Explorer/Manager that lets you edit files like a buffer

### 2024-05-20
#### 1430H
- New
    - Added new LSP configuration lua script 'rust_analyzer.lua' in 'src/lua/configurations/lsp/' for the Rust Language Server
- Updates
    - Updated lua script 'lsp.lua' in 'src/lua/'
        + Added new LSP configuration lua script imports for rust_analyzer.lua

