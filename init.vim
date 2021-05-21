" Personal vim configuration
"
" Author: Chunhui Ren <renchunhui2008@gmail.com>
" License: MIT License

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