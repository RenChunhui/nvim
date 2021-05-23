" Personal vim configuration
"
" Author: Chunhui Ren <renchunhui2008@gmail.com>
" License: MIT License



"----------------------------------------------------------------------
" 环境设置
"----------------------------------------------------------------------

" 默认键映射
let mapleader = "<Space>"

" 关闭 python2 环境
let g:loaded_python_provider = 0

" 关闭 ruby 环境
let g:loaded_ruby_provider = 0

" 启用 python3
let g:python3_host_prog = exepath('python3')


"----------------------------------------------------------------------
" 基础选项
"----------------------------------------------------------------------

" 编码
set encoding=utf-8

" 文件默认编码
set fileencoding=utf-8

" 颜色
set termguicolors

" 根据文件类型自动设置缩进
filetype plugin indent on

" 语法高度
syntax enable

" 禁用 vi 兼容模式
set nocompatible



"----------------------------------------------------------------------
" 显示选项
"----------------------------------------------------------------------

" 显示行号
set number

" 总是显示状态栏
set laststatus=2

" 总是显示侧边栏（用于显示 mark/gitdiff/诊断信息）
set signcolumn=yes

" 显示标签栏
set showtabline=2

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 设置黑色背景
set background=dark

" 允许 256 色
set t_Co=256

" 高亮当前行
set cursorline

" 行宽
set textwidth=80

" 不显示首页提示
set shortmess=atI



"----------------------------------------------------------------------
" 缩进选项
"----------------------------------------------------------------------

" 继承前一行的缩进方式
set autoindent

" 制表符转换成空格
set expandtab



"----------------------------------------------------------------------
" 搜索选项
"----------------------------------------------------------------------

" 高亮搜索内容
set hlsearch

" 搜索时忽略大小写
set ignorecase

" 查找输入时动态增量显示查找结果
set incsearch

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase



"----------------------------------------------------------------------
" 备份选项
"----------------------------------------------------------------------

" 不进行备份
set nobackup

" 禁用交换文件
set noswapfile

set nowritebackup



"----------------------------------------------------------------------
" 其他选项
"----------------------------------------------------------------------

" 启用自动换行
set wrap

" 显示匹配的括号
set showmatch

" 显示最后一行
set display=lastline

" 延迟绘制（提升性能）
set lazyredraw

" 记录历史操作
set history=100

" 启用文件监视
set autoread



"---------------------------------------------------------------------- 
" 插件安装
"----------------------------------------------------------------------

if empty(glob('$HOME/.config/nvim/plugged'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('$HOME/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

Plug 'tpope/vim-fugitive'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'

call plug#end()

silent! colorscheme onedark
