----------------------------------------------------
-- plugins.lua - 插件管理
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- 安装 packer
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
  execute 'autocmd VimEnter * PackerInstall'
end

vim.cmd('packadd packer.nvim')

-- 命令
vim.cmd [[command! WhatHighlight :call util#syntax_stack()]]
vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]

return require('packer').startup(function (use)
  -- 插件管理
  use { 'wbthomason/packer.nvim', opt = true }

  -- LSP
  use { 'neovim/nvim-lspconfig', config = function () require('config.lsp') end }

  -- Autocomplete
  use { 'hrsh7th/nvim-compe',config = function () require('config.compe') end }
  use { 'hrsh7th/vim-vsnip'}

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function () require('config.treesitter') end,
    run = ":TSUpdate"
  }
  use { 'nvim-treesitter/playground', config = function () require('config.playground') end }

  -- Explorer
  use { 'kyazdani42/nvim-tree.lua', config = function () require('config.tree') end }
  use { 'kyazdani42/nvim-web-devicons', config = function () require('config.icons') end }

  -- Database
  use {
    'tpope/vim-dadbod',
    requires = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion'
    },
    config = function () require('config.dadbod') end
  }

  -- UI
  use { 'glepnir/dashboard-nvim', config = function () require('config.dashboard') end }
  use { 'romgrk/barbar.nvim', config = function () require('config.barbar') end }

  -- Miscellaneous
  use { 'folke/which-key.nvim', config = function () require('config.keymap') end }
  use { 'windwp/nvim-autopairs', config = function () require('config.autopairs') end }
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
    setup = function () require('config.indentline') end
  }
  use {
    'junegunn/vim-easy-align',
    config = function() require('config.easy_align') end,
    keys = '<Plug>(EasyAlign)'
  }
  use 'editorconfig/editorconfig-vim'
end)
