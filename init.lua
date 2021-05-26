----------------------------------------------------
-- init.lua - Personal NeoVim 0.5 Configuration
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- 全局变量
require('init-global')

-- 常规设置
require('init-settings')

-- 插件安装
require('init-plugins')

-- LSP
require('init-lsp')

-- 自动补全
require('init-complete')

require('init-ui')