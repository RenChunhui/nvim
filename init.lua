local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local fn = vim.fn
local api = vim.api
local packer_bootstrap = nil

local install_path = fn.expand('$HOME') .. "/.config/nvim/pack/vendor/start/packer.nvim"
local package_root = fn.expand('$HOME') .. "/.config/nvim/pack"
local compile_path = fn.expand('$HOME') .. "/.config/nvim/plugin/packer_compiled.lua"

if fn.empty(fn.glob(install_path)) > 0 then
	api.nvim_echo({ { 'Installing packer.nvim', 'Type' } }, true, {})
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1',
		'https://ghproxy.com/https://github.com/wbthomason/packer.nvim', install_path })
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.startup({
	function(use)
		use 'wbthomason/packer.nvim'

    -- Dashboard
    use {
      'glepnir/dashboard-nvim',
      config = function()
        require('user-dashboard')
      end
    }

    -- Native LSP
    use {
      'neovim/nvim-lspconfig',
      after = 'cmp-nvim-lsp',
      config = function()
        require('user-lspconfig')
      end
    }

    -- Completion
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'L3MON4D3/LuaSnip', after = 'nvim-cmp' }
      },
      event = 'InsertEnter',
      config = function()
        require('user-cmp')
      end
    }

    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      event = 'BufRead',
      run = ':TSUpdate',
      config = function()
        require('user-treesitter')
      end
    }
    use {
      'nvim-treesitter/playground',
      cmd = 'TSPlaygroundToggle',
      config = function()
        require('user-treesitter')
      end
    }

    -- File Explorer
    use {
      'nvim-tree/nvim-tree.lua',
      cmd = { 'NvimTreeToggle', 'NvimTreeOpen' },
      requires = {
        'nvim-tree/nvim-web-devicons'
      },
      config = function()
        require('user-tree')
      end
    }

    -- Keybindings
    use {
      'folke/which-key.nvim',
      keys = '<space>',
      config = function()
        require('user-whichkey')
      end
    }

    -- Formatter
    use {
      'windwp/nvim-autopairs',
      event = 'InsertEnter'
    }

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
				return require('packer.util').float {
					border = 'rounded'
				}
			end
		},
		profile = {
			enable = true,
			threshold = 1
		},
    git = {
      default_url_format = 'https://ghproxy.com/https://github.com/%s'
    }
	}
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

cmd([[
  filetype plugin indent on
  silent! colorscheme primer
]])
