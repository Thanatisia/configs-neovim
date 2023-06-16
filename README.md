# Dotfiles and Configurations - Neovim

## Introduction
### Background
```
This repository contains the Neovim configuration I use on all my systems that is running Neovim
```

### System
- Neovim version tested
    + v0.9.0-release-20230407

### Packages/Plugins
+ Please refer to [plugins](plugins.md) for the full list of plugins/packages used

### Neovim
+ Neovim is a fork of the Vim project that has various Quality-of-Life improvements as well as additional features such as integrating lua into the project system so you can execute lua commands.
- Project Structure
    + Configuration folder: ~/.config/nvim/
    + Configuration file: init.{vim|lua}

## Setup
### Dependencies
+ Neovim
+ git    : For installing/pulling packages

### Pre-Requisites
- Place the source folder into your ~/.config/nvim/ folder
    ```console
    cp -r src ~/.config/nvim
    ```

## Documentations
### Contents
+ README.md : This README
+ plugins.md : The full list of plugins
+ vim.bat : This is a custom neovim Batch file script for Windows users if they would like to set custom file paths without having to edit the system '%PATH%' environment variable, as well as run as 'vim'
+ src/ : Contains the configurations

## Wiki

## Resources

## References

## Remarks
