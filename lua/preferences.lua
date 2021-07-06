----------------------------------------------------
-- preferences.lua - 首选项设置
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- 禁用 python2 支持
vim.g.loaded_python_provider = 0

-- 禁用 python3 支持(暂无这方面插件)
-- vim.g.python3_host_prog = vim.fn.exepath('python3')
vim.g.loaded_python3_provider = 0

-- 禁用 node 支持
vim.g.loaded_node_provider = 0

-- 禁用 Ruby 支持
vim.g.loaded_ruby_provider = 0

-- 禁用 Perl 支持
vim.g.loaded_perl_provider = 0

-- 使用空格
vim.g.mapleader = ' '



----------------------------------------------------
-- 缩进选项
----------------------------------------------------

-- 继承前一行的缩进方式
vim.o.autoindent = true

-- 制表符使用空格
vim.o.expandtab = true

-- 默认使用两个空格
vim.o.tabstop = 2

-- 自动缩进长度
vim.o.shiftwidth = 2



----------------------------------------------------
-- 搜索选项
----------------------------------------------------

-- 高亮显示匹配结果
vim.o.hlsearch = true

-- 搜索时忽略大小写
vim.o.ignorecase = true

-- 当包含大小写时，自动区分大小写
vim.o.smartcase = true



----------------------------------------------------
-- 性能选项
----------------------------------------------------

-- 不要在宏和脚本执行期间更新屏幕
vim.o.lazyredraw = true



----------------------------------------------------
-- 文字渲染
----------------------------------------------------

-- 启用真彩
vim.o.termguicolors = true

-- 编码
vim.o.encoding = 'utf-8'

-- 文件默认编码
vim.o.fileencoding = 'utf-8'

-- 避免在单词中间换行
vim.o.linebreak = true

-- 自动换行
vim.o.wrap = true



----------------------------------------------------
-- 界面选项
----------------------------------------------------

-- 高亮当前行
vim.wo.cursorline = true

-- 显示行号
vim.wo.number = true

-- 不显示光标
vim.o.ruler = false

-- 显示括号匹配
vim.o.showmatch = true

-- 显示状态栏
vim.o.laststatus = 2

-- 显示标签栏
vim.o.showtabline = 0

vim.o.mouse = 'a'


----------------------------------------------------
-- 其他选项
----------------------------------------------------

-- 不进行备份
vim.o.backup = false

-- 禁用交换文件
vim.o.swapfile = false

-- 记录历史操作
vim.o.history = 100



-- 语法高亮
vim.cmd('syntax on')

-- 打开文件类型检测
vim.cmd('filetype plugin indent on')

-- 颜色主题
vim.cmd('silent! colorscheme one')
