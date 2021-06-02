----------------------------------------------------
-- init-global.lua - Global Variables
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

-- $HOME 环境变量
HOME = vim.fn.expand('$HOME')

vim.g.palette = {
  atom = {
    comment     = '',
    constant    = '',
    identifier  = '',
    statement   = '',
    preproc     = '',
    type        = '',
    special     = '',
    storage     = '',
    bg0         = '',
    fg0         = '',
    bg1         = '',
    fg1         = '',
    diffadd     = '',
    diffdelete  = '',
    diffchange  = '',
    difftext    = ''
  }
}
