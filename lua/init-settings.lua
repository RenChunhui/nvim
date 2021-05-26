----------------------------------------------------
-- init-settings.lua - General Settings
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- 键映射
vim.g.mapleader = "<Space>"

-- 禁用 python2 支持
vim.g.loaded_python_provider = 0

-- 禁用 Ruby 支持
vim.g.loaded_ruby_provider = 0

-- 禁用 Perl 支持
vim.g.loaded_perl_provider = 0




-- 编码
vim.o.encoding = 'utf-8'

-- 文件默认编码
vim.o.fileencoding = 'utf-8'

-- 启用真彩
vim.o.termguicolors = true

-- 使用深色主题
vim.o.background = 'dark'

-- 不进行备份
vim.o.backup = false

-- 禁用交换文件
vim.o.swapfile = false

-- 记录历史操作
vim.o.history = 100

-- Tab 长度为2空格
vim.o.tabstop = 2

-- 继承前一行的缩进方式
vim.o.autoindent = true



-- 高亮当前行
vim.wo.cursorline = true

-- 显示行号
vim.wo.number = true

vim.cmd('syntax on')