local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Dashboard
  -- {
  --   'glepnir/dashboard-nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('user-dashboard')
  --   end
  -- },

  -- Native LSP
  -- {
  --   'neovim/nvim-lspconfig',
  --   after = 'cmp-nvim-lsp',
  --   config = function()
  --     require('user-lspconfig')
  --   end
  -- },

  -- Completion
  -- {
  --   'hrsh7th/nvim-cmp',
  --   dependencies = {
  --     { 'hrsh7th/cmp-nvim-lsp' },
  --     { 'L3MON4D3/LuaSnip', after = 'nvim-cmp' }
  --   },
  --   event = 'InsertEnter',
  --   config = function()
  --     require('user-cmp')
  --   end
  -- },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = ':TSUpdate',
    config = function()
      require('user-treesitter')
    end
  },
  {
    'nvim-treesitter/playground',
    cmd = 'TSPlaygroundToggle',
    config = function()
      require('user-treesitter')
    end
  },

  -- File Explorer
  {
    'nvim-tree/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    config = function()
      require('user-tree')
    end
  },

  -- Fuzzy Finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    cmd = 'Telescope',
    config = function()
      require('user-telescope')
    end
  },

  -- Keybindings
  {
    'folke/which-key.nvim',
    keys = '<space>',
    config = function()
      require('user-whichkey')
    end
  },

  -- Formatter
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('user-autopairs')
    end
  }
},{

})

g.mapleader = " "

-- 禁用 Python3 支持
g.loaded_python3_provider = 0
-- 禁用 Ruby 支持
g.loaded_ruby_provider = 0
-- 禁用 Perl 支持
g.loaded_perl_provider = 0
-- 禁用 Node 支持
g.loaded_node_provider = 0

-- 自动缩进
opt.autoindent = true
-- 自动折行
opt.wrap = true
-- 延迟绘制（提升性能）
opt.lazyredraw = true
-- 行宽
opt.textwidth = 80
-- 显示括号匹配
opt.showmatch = true
-- 历史记录
opt.history = 100

-- 启用真彩
opt.termguicolors = true
-- 显示状态栏
opt.laststatus = 3
-- 显示标签栏
opt.showtabline = 2
-- 显示侧边栏（用于显示 mark/gitdiff/诊断信息）
opt.signcolumn = "yes"
-- 显示行号
opt.number = true
-- 右下角显示命令
opt.showcmd = true
-- 突出显示当前行
opt.cursorline = true
opt.cmdheight = 0

-- 使用 2 个空格
opt.tabstop = 2
-- 自动缩进空格数
opt.shiftwidth = 2

-- 搜索时忽略大小写
opt.ignorecase = true
-- 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
opt.smartcase = true
-- 高亮显示匹配结果
opt.hlsearch = true
-- 查找输入时动态增量显示查找结果
opt.incsearch = true

-- 不备份
opt.backup = false
-- 保存时不备份
opt.writebackup = false
-- 禁用交换文件
opt.swapfile = false

opt.pumheight = 20

cmd([[
  filetype plugin indent on
  silent! colorscheme primer
]])
