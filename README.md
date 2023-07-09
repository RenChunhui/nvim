<div align="center">
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" >

  My neovim configuration

</div>

## Requirements

- neovim >= 0.8.0
- Nerd Font(optional)
- 

## Features

- File explorer with [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)

## Getting Started


## File Structure

``` bash
~/.config/nvim
├── lua
│   ├── core
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   ├── options.lua
│   │   └── store.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
```
