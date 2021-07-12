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

vim.cmd [[ packadd packer.nvim ]]

-- 命令
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile profile=true]]
vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]


return require('packer').startup(function (use)
  -- 插件管理
  use {
    'wbthomason/packer.nvim',
    opt = true
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function () require('packer.lsp') end,
    event = 'BufReadPre'
  }

  -- Autocomplete
  use {
    'hrsh7th/nvim-compe',
    config = function () require('packer.compe') end,
    event = 'InsertEnter'
  }
  use {
    'hrsh7th/vim-vsnip',
    event = 'InsertCharPre'
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function () require('packer.telescope') end,
    requires = {
      {'nvim-lua/popup.nvim', opt = true},
      {'nvim-lua/plenary.nvim', opt = true}
    },
    cmd = 'Telescope'
  }

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function () require('packer.treesitter') end,
    event = 'BufRead',
    after = 'telescope.nvim',
    run = ":TSUpdate"
  }
  use {
    'nvim-treesitter/playground',
    config = function () require('packer.playground') end,
    after = 'nvim-treesitter'
  }

  -- Database
  use {
    'kristijanhusak/vim-dadbod-ui',
    config = function () require('packer.dadbod') end,
    requires = {
      { 'tpope/vim-dadbod', opt = true },
      { 'kristijanhusak/vim-dadbod-completion', opt = true }
    },
    cmd = {'DBUIToggle','DBUIAddConnection','DBUI','DBUIFindBuffer','DBUIRenameBuffer'}
  }

  -- UI
  use {
    'glepnir/dashboard-nvim',
    config = function () require('packer.dashboard') end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = function () require('packer.tree') end,
    requires = {
      'kyazdani42/nvim-web-devicons',
      config = function () require('packer.icons') end,
    },
    cmd = {'NvimTreeToggle','NvimTreeOpen'}
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function () require('packer.indent-blankline') end,
    event = 'BufRead'
  }

  -- Editor
  use {
    'jiangmiao/auto-pairs',
    event = 'InsertEnter'
  }

  use {
    'editorconfig/editorconfig-vim',
    ft = { 'go', 'typescript','javascript','html','css'}
  }

  use {
    'folke/which-key.nvim',
    config = function () require('packer.which-key') end
  }
end)
