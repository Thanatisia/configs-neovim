# CHANGELOGS

## Table of Contents
+ [2024-01-03](#2024-01-03)
+ [2024-03-05](#2024-03-05)
+ [2024-03-07](#2024-03-07)

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

