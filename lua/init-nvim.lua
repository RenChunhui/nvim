-- 键映射
vim.g.mapleader = "<Space>"

-- 禁用 python2 支持
vim.g.loaded_python_provider = 0

-- 禁用 Ruby 支持
vim.g.loaded_ruby_provider = 0

-- 禁用 Perl 支持
vim.g.loaded_perl_provider = 0




-- 编码
-- vim.o.encoding = 'utf-8'

-- 文件默认编码
-- vim.o.fileencoding = 'utf-8'

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



-- 高亮当前行
vim.wo.cursorline = true

-- 显示行号
vim.wo.number = true