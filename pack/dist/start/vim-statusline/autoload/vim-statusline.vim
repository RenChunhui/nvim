let s:modes={
      \ 'n'  			: 'NORMAL',
      \ 'i' 			: 'INSERT',
      \ 'R'  			: 'REPLACE',
      \ 'v'  			: 'VISUAL',
      \ 'V'  			: 'V·LINE',
      \ '\<C-v>' 	    : 'V·BLOCK',
      \ 'c'  			: 'COMMAND',
      \ 's'  			: 'SELECT',
      \ 'S'  			: 'S·LINE',
      \ '\<C-s>' 	    : 'S·BLOCK',
      \ 't'  			: 'TERMINAL',    
      \}


function! statusline#mode() abort
    return toupper(s:modes[mode()])
endfunction

function! statusline#encode() abort
    return strlen(&fenc) ? toupper(&fenc) : ''
endfunction