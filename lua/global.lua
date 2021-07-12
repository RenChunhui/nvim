----------------------------------------------------
-- global.lua - 全局变量
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- $HOME 系统环境变量
HOME = vim.fn.expand('$HOME')

-- 判断是否是 macOS
IS_MAC = vim.loop.os_uname().system == 'Darwin'

-- 判断是否是 Linux
IS_LINUX = vim.loop.os_uname().system == 'Linux'
