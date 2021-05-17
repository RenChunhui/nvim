" Personal neovim configuration
" Maintainer:   Chunhui Ren <renchunhui2008@gmail.com>
" License:      MIT License

" -----------------------------------------------------------------------------
" 变量设置
" -----------------------------------------------------------------------------

let mapleader = "\<Space>"
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
let g:python3_host_prog = system('which python3')



" -----------------------------------------------------------------------------
" Indention Options
" -----------------------------------------------------------------------------

" New lines inherit the indentation of previous lines.
set autoindent

" Convert tabs to spaces.
set expandtab

" Enable indentation rules that are file-type specific.
filetype plugin indent on

" Indent using four spaces.
set tabstop=2


" -----------------------------------------------------------------------------
" Search Options
" -----------------------------------------------------------------------------

" Enable search highlighting.
set hlsearch

" Ignore case when searching.
set ignorecase

" Incremental search that shows partial matches.
set incsearch

" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set smartcase


" -----------------------------------------------------------------------------
" Performance Options
" -----------------------------------------------------------------------------

" Limit the files searched for auto-completes.
set complete-=i

" Don’t update screen during macro and script execution.
set lazyredraw



" -----------------------------------------------------------------------------
" Text Rendering Options
" -----------------------------------------------------------------------------

" Enable syntax highlighting.
syntax enable

set termguicolors

" Always try to show a paragraph’s last line.
set display+=lastline

" Encoding
set encoding=utf-8

" Avoid wrapping a line in the middle of a word.
set linebreak

" The number of screen lines to keep above and below the cursor.
set scrolloff=1

" Enable line wrapping.
set wrap



" -----------------------------------------------------------------------------
" User Interface Options
" -----------------------------------------------------------------------------

" Always display the status bar.
set laststatus=2

" Display command line’s tab complete options as a menu.
set wildmenu

" Highlight the line currently under cursor.
set cursorline

" Show line numbers on the sidebar.
set number

" Disable beep on errors.
set noerrorbells

" Enable mouse for scrolling and resizing.
set mouse=a

" Set the window’s title, reflecting the file currently being edited.
set title



" -----------------------------------------------------------------------------
" Miscellaneous Options
" -----------------------------------------------------------------------------

" Automatically re-read files if unmodified inside Vim.
set autoread

" Hide files in the background instead of closing them.
set hidden

" Increase the undo limit.
set history=1000

" Disable swap files.
set noswapfile

" Ignore files matching these patterns when opening files based on a glob pattern.
set wildignore+=.pyc,.swp

set nobackup



" -----------------------------------------------------------------------------
" 插件安装
" -----------------------------------------------------------------------------

if empty(glob('$HOME/.config/nvim/plugged'))
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pechorin/any-jump.vim'

call plug#end()

silent! colorscheme onedark