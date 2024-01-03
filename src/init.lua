-- Test Neovim config with LSP Autocomplete

--- Start Loading
print("Loading...")

--- Import/Source all libraries
require('variables') --- Contains all global variables
require('plugins') --- Contains all plugins and plugin managers
require('settings') --- Contains all vim settings
require('lsp') --- Contains all LSP and autocomplete settings
require('autocommands') --- Contains all Lua functions and autocommands that helps with quality of life

--- End Loading
print("Loading Complete.")


