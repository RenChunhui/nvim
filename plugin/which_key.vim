let g:which_key_use_floating_win = 0

" 符号
let g:which_key_display_names = {
			\ '<CR>': '↵',
			\ '<TAB>': '⇆'
			\ }

let g:mapleader = "\<Space>"
let g:maplocaleader = ','

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map = {}

let g:which_key_map.a = {
            \ 'name':"Applications",
						\ 'c': 'Calendar'
            \}

let g:which_key_map.b = {
			\ 'name': 'Buffers',
			\ 'f' : [':Buffers', 'Find Buffer']
			\ }

let g:which_key_map.f = {
			\ 'name': 'File',
			\ 'f': [':Files','Find File'],
			\ 't': [':Filetypes', 'File Types']
			\ }

let g:which_key_map.g = {
			\ 'name': 'Git',
			\ 'f': ['GFiles','Git Files'],
			\ 'c': ['Commits', 'Git Commits']
			\ }

let g:which_key_map.s = {
			\ 'name': 'Search',
			\ 'l': ['BLines', 'Line in Buffer'],
			\ 'L': ['Lines', 'Lines'],
			\ 'h': [':History:', 'Command History'],
			\ 'H': [':History/', 'Search History']
			\ }

let g:which_key_map.t = {
			\ 'name': 'Toggle',
			\ 'e': [':Defx -columns=indent:icon:icons:filename', 'Explorer'],
			\ 't': [':Colors','Theme']
			\ }

let g:which_key_map.w = {
			\ 'name': 'Window'
			\ }

autocmd! User vim-which-key call which_key#register('<Space>', "g:which_key_map")

set timeoutlen=500

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler