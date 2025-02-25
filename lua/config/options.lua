local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

-- 禁用 Python3 支持
g.loaded_python3_provider = 0
-- 禁用 Ruby 支持
g.loaded_ruby_provider = 0
-- 禁用 Perl 支持
g.loaded_perl_provider = 0
-- 禁用 Node 支持
g.loaded_node_provider = 0

-- 启用鼠标
opt.mouse = a

-- 显示行号
opt.number = true
