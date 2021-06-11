" Name: doomone
" Description: doomone colorscheme
" Author: Chunhui Ren <renchunhui2008@gmail.com>
" License: MIT License

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "doomone"

let s:comment    = '5B6268'
let s:constant   = 'a9a1e1'
let s:identifier = 'c678dd'
let s:statement  = '51afef'
let s:preproc    = 'EDEDED'
let s:type       = 'ECBE7B'
let s:special    = '3B4048'
let s:storage    = ''

let s:fg0        = 'bbc2cf'
let s:bg0        = '282c34'
let s:fg1        = '5B6268'
let s:bg1        = '21242b'

let s:visual     = '3E4452'
let s:folded     = '2B323D'
let s:pmenu      = '3E4452'
let s:wildmenu   = '61afef'

let s:diffadd    = '98be65'
let s:diffdelete = 'ff6c6b'
let s:diffchange = 'da8548'
let s:difftext   = '96CBFE'
endif

function! <sid>hi(group,fg,bg)
        execute "hi " . a:group . " guifg=#" . a:fg . " guibg=#" . a:bg
endfunction

" Editor colors
call <sid>hi('Normal',       s:fg0,     s:bg0)
call <sid>hi('ColorColumn',  'none',              s:diffdelete)
call <sid>hi('Conceal',      s:comment, '')
call <sid>hi('Cursor',       s:bg0,              s:fg0)
call <sid>hi('CursorColumn', 'none', s:folded)
call <sid>hi('CursorLine',   'none', s:folded)
call <sid>hi('Directory',    s:fg0,         '')
call <sid>hi('ErrorMsg',     s:bg0,         s:storage)
call <sid>hi('VertSplit',    s:bg0, s:bg1)
call <sid>hi('Folded',       s:comment, s:folded)
call <sid>hi('FoldColumn',   s:comment, 'none')
call <sid>hi('LineNr',       s:comment,        '')
call <sid>hi('CursorLineNr', 'none',     s:folded)
call <sid>hi('MatchParen',   s:bg0,         s:special)
call <sid>hi('ModeMsg',      s:fg0,     s:bg0)
call <sid>hi('MoreMsg',      s:fg0,     s:bg0)
call <sid>hi('NonText',      s:bg0,        s:bg0)
call <sid>hi('PMenu',        s:fg0, s:pmenu)
call <sid>hi('PMenuSel',     s:fg0, s:wildmenu)
call <sid>hi('PMenuSbar',    'none', s:comment)
call <sid>hi('PMenuThumb',   'none', s:pmenu)
call <sid>hi('Question',     s:constant,         'none')
call <sid>hi('Search',       s:bg0, s:preproc)
call <sid>hi('SpecialKey',   s:bg1, 'none')
call <sid>hi('StatusLine',   s:bg1,     s:fg1)
call <sid>hi('StatusLineNC', s:bg1,     s:fg1)

call <sid>hi('Title',        s:statement,     'none')
call <sid>hi('Visual',       s:bg0,              s:visual)
call <sid>hi('VisualNOS',    'none',              s:comment)
call <sid>hi('WarningMsg',   s:preproc,         s:bg0)
call <sid>hi('WildMenu',     s:wildmenu,     s:fg0)

" Standard syntax highlighting
call <sid>hi('Comment',        s:comment,        '')

call <sid>hi('Constant',       s:constant,       '')
call <sid>hi('String',         s:constant,       '')
call <sid>hi('Character',      s:constant,       '')
call <sid>hi('Number',         s:constant,       '')
call <sid>hi('Boolean',        s:constant,       '')
call <sid>hi('Float',          s:constant,       '')

call <sid>hi('Identifier',     s:identifier,     '')
call <sid>hi('Function',       s:identifier,     '')

call <sid>hi('Statement',      s:statement,      '')
call <sid>hi('Conditional',    s:statement,      '')
call <sid>hi('Repeat',         s:statement,      '')
call <sid>hi('Label',          s:statement,      '')
call <sid>hi('Operator',       s:statement,      '')
call <sid>hi('Keyword',        s:statement,      '')
call <sid>hi('Exception',      s:statement,      '')

call <sid>hi('PreProc',        s:preproc,        '')
call <sid>hi('Include',        s:preproc,        '')
call <sid>hi('Define',         s:preproc,        '')
call <sid>hi('Macro',          s:preproc,        '')
call <sid>hi('PreCondit',      s:preproc,        '')

call <sid>hi('Type',           s:type,       '')
call <sid>hi('StorageClass',   s:type,       '')
call <sid>hi('Structure',      s:type,       '')
call <sid>hi('Typedef',        s:type,       '')

call <sid>hi('Special',        s:special,    '')
call <sid>hi('SpecialChar',    s:special,    '')
call <sid>hi('Tag',            s:special,    '')
call <sid>hi('Delimiter',      s:special,    '')
call <sid>hi('SpecialComment', s:special,    '')
call <sid>hi('Debug',          s:special,    '')

call <sid>hi('Underlined',     s:preproc, 'none')
" call <sid>hi('Ignore',         '',              '',          '')
call <sid>hi('Error',          s:bg0,         s:storage)
call <sid>hi('Todo',           s:fg0,         s:wildmenu)

" Diff highlighting
call <sid>hi('DiffAdd',     'none', s:diffadd)
call <sid>hi('DiffChange',  'none', s:diffchange)
call <sid>hi('DiffDelete',  s:comment, s:diffdelete)
call <sid>hi('DiffText',    s:fg0, s:difftext)


" Remove functions
delf <sid>hi

" Remove color variables
unlet s:comment s:constant s:identifier s:statement s:preproc s:type s:special s:storage
unlet s:fg0 s:bg0 s:fg1 s:bg1 s:visual s:folded s:pmenu s:wildmenu
unlet s:diffadd s:diffdelete s:diffchange s:difftext
