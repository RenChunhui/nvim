local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

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

cmd [[
  filetype plugin indent on
  silent! colorscheme github
]]
