if exists('g:loaded_statusline')
    finish
endif
let g:loaded_statusline = 1

function! s:active() abort

endfunction

function! s:inactive()

endfunction

augroup Statusline
    autocmd!
augroup END