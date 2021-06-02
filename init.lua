----------------------------------------------------
-- init.lua - Personal NeoVim 0.5 Configuration
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

vim.cmd [[packadd packer.nvim]]

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

-- 快捷键
require('init-keymaps')

-- UI
require('init-ui')

-- 目录树
require('init-explorer')

-- 杂项设置
require('init-miscellaneous')
