local fn = vim.fn
local api = vim.api
local packer_bootstrap = nil

local install_path = fn.expand('$HOME') .. "/.config/nvim/pack/vendor/start/packer.nvim"
local package_root = fn.expand('$HOME') .. "/.config/nvim/pack"
local compile_path = fn.expand('$HOME') .. "/.config/nvim/plugin/packer_compiled.lua"

if fn.empty(fn.glob(install_path)) > 0 then
  api.nvim_echo({ { 'Installing packer.nvim', 'Type' } }, true, {})
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://ghproxy.com/https://github.com/wbthomason/packer.nvim', install_path })
end

vim.cmd([[autocmd BufWritePost init.lua source <afile> | PackerCompile]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.startup({ function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  use {
    'williamboman/mason.nvim',
    config = function()
      require('user-mason')
    end,
    cmd = 'Mason'
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('user-lspconfig')
    end,
    event = 'BufReadPre'
  }
  use {
    'folke/trouble.nvim',
    cmd = 'TroubleToggle'
  }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      { 'L3MON4D3/LuaSnip', after = 'nvim-cmp' }
    },
    config = function()
      require('user-completion')
    end,
    event = 'InsertEnter'
  }

  -- Fuzzy Finder
  use { 'nvim-telescope/telescope.nvim',
    config = function()
      require('user-telescope')
    end,
    cmd = 'Telescope'
  }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('user-treesitter')
    end,
    event = 'BufRead'
  }
  use {
    'nvim-treesitter/playground',
    config = function()
      require('user-playground')
    end,
    cmd = 'TSPlaygroundToggle'
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('user-tree')
    end,
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen' }
  }
  use {
    'akinsho/bufferline.nvim',
    config = function()
      require('user-bufferline')
    end
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('user-gitsigns')
    end,
    event = 'BufRead'
  }

  -- Database
  use {
    'kristijanhusak/vim-dadbod-ui',
    requires = {
      { 'tpope/vim-dadbod', opt = true },
      { 'kristijanhusak/vim-dadbod-completion', opt = true }
    },
    cmd = { 'DBUIToggle', 'DBUIAddConnection', 'DBUI', 'DBUIFindBuffer', 'DBUIRenameBuffer' }
  }

  -- Keybindings
  use { 'folke/which-key.nvim',
    config = function()
      require('user-whichkey')
    end,
    keys = "<space>"
  }

  -- UI
  use { 'glepnir/dashboard-nvim',
    config = function()
      require('user-dashboard')
    end,
  }

  -- Formatter
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('user-autopairs')
    end,
    event = 'InsertEnter'
  }
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('user-autotag')
    end,
    after = 'nvim-treesitter'
  }
  use { 'prettier/vim-prettier', event = 'BufRead' }

  if packer_bootstrap ~= nil then
    require('packer').sync()
  end
end,
config = {
  package_root = package_root,
  compile_path = compile_path,
  plugin_package = "vendor",
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end
  },
  profile = {
    enable = true,
    threshold = 1
  },
  git = {
    default_url_format = 'https://ghproxy.com/https://github.com/%s'
  }
} })
