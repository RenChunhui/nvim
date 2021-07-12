" -----------------------------------------------------------------------------
" Name:         atom
" Author:       Chunhui Ren <renchunhui2008@gmail.com>
" License:      MIT License
" -----------------------------------------------------------------------------

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name='one'

let s:is_dark=(&background == 'dark')

if s:is_dark
    let s:fg0       = 'abb2bf'
    let s:bg0       = '282c34'
    let s:fg1       = '9da5b4'
    let s:bg1       = '21252b'
    let s:cursor    = '2B323D'

    let s:comment   = '5c6370'
    let s:constant  = 'd19a66'
    let s:string    = '98c379'
    let s:character = '98c379'
    let s:variable  = 'e06c75'
    let s:function  = '61afef'
    let s:statement = 'c678dd'
    let s:storage   = 'c678dd'
    let s:type      = '56b6c2'
    let s:property  = 'e06c75'
    let s:tag       = 'e06c75'

    let s:pmenu     = '242831'
    let s:wildmenu  = '393F4D'

    let s:renamed   = '33a0ff'
    let s:added     = '43d08a'
    let s:modified  = 'e0c285'
    let s:removed   = 'e05252'
else

endif

function! <sid>hi(group,guifg,guibg,gui)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif

  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif

  if a:gui != ""
    exec "hi " . a:group . " gui=" . a:gui
  endif
endfunction

"+----------------------------------------------------------------------------+
"                                    editor                                   +
"+----------------------------------------------------------------------------+

call <sid>hi('Normal',       s:fg0, s:bg0, "")
call <sid>hi('EndOfBuffer',  s:bg0, "", "")
call <sid>hi('StatusLine',   s:bg1, s:fg1, "")
call <sid>hi('StatusLineNC', s:bg1, s:fg1, "")
call <sid>hi('VertSplit',    s:bg1, s:bg1, "")
call <sid>hi("Pmenu",        s:fg0,s:pmenu,"")
call <sid>hi("PmenuSel",     s:fg0,s:wildmenu,"")
call <sid>hi("PmenuSbar",    "",s:comment,"")
call <sid>hi("PmenuThumb",   "",s:pmenu,"")
call <sid>hi('TabLine',      s:fg0, s:bg1, "underline")
call <sid>hi('TabLineFill',  "",s:bg1, "reverse")
call <sid>hi('TabLineSel',   s:fg0, s:bg0, "bold")
call <sid>hi('NonText',      s:bg0, "", "")
call <sid>hi("SpecialKey",   s:bg0,"","")
call <sid>hi('LineNr',       s:comment, "", "")
call <sid>hi('CursorLine',   "" ,s:cursor, "")
call <sid>hi('CursorLineNr', s:fg0,"","")
call <sid>hi('Directory',    s:fg0, "","")



"+----------------------------------------------------------------------------+
"                                     diff                                    +
"+----------------------------------------------------------------------------+
call <sid>hi('DiffAdd',    s:added, "","")
call <sid>hi('DiffChange', s:modified, "","")
call <sid>hi('DiffDelete', s:removed, "","")
call <sid>hi('DiffText',   s:renamed, "","")



"+----------------------------------------------------------------------------+
"                               syntax highlight                              +
"+----------------------------------------------------------------------------+

call <sid>hi("Comment", s:comment, "","")
call <sid>hi("Constant", s:constant, "","")
call <sid>hi("Identifier", s:variable,"","")
call <sid>hi("Function", s:function,"","")
call <sid>hi("Statement", s:statement,"","")


"+----------------------------------------------------------------------------+
"                                  treesitter                                 +
"+----------------------------------------------------------------------------+
call <sid>hi("TSAnnotation",         )
call <sid>hi("TSAttribute",          )
call <sid>hi("TSBoolean",            s:constant,"","")
call <sid>hi("TSCharacter",          s:character,"","")
call <sid>hi("TSComment",            s:comment, "","")
call <sid>hi("TSConditional",        s:statement, "","")
call <sid>hi("TSConstant",           s:constant,"","")
call <sid>hi("TSConstBuiltin",       )
call <sid>hi("TSConstMacro",         )
call <sid>hi("TSConstructor",        s:type,"","")
call <sid>hi("TSError",              )
call <sid>hi("TSException",          s:statement,"","")
call <sid>hi("TSField",              )
call <sid>hi("TSFloat",              s:constant,"","")
call <sid>hi("TSFunction",           s:function,"","")
call <sid>hi("TSFuncBuiltin",        )
call <sid>hi("TSFuncMacro",          )
call <sid>hi("TSInclude",            s:statement,"","")
call <sid>hi("TSKeyword",            s:statement,"","")
call <sid>hi("TSKeywordFunction",    s:statement,"","")
call <sid>hi("TSKeywordOperator",    s:statement,"","")
call <sid>hi("TSLabel",              s:statement,"","")
call <sid>hi("TSMethod",             )
call <sid>hi("TSNamespace",          s:statement,"","")
call <sid>hi("TSNone",               )
call <sid>hi("TSNumber",             s:constant,"","")
call <sid>hi("TSOperator",           s:type,"","")
call <sid>hi("TSParameter",          s:fg0,"","")
call <sid>hi("TSParameterReference", )
call <sid>hi("TSProperty",           s:property,"","")
call <sid>hi("TSPunctDelimiter",     s:fg0,"","")
call <sid>hi("TSPunctBracket",       s:fg0,"","")
call <sid>hi("TSPunctSpecial",       )
call <sid>hi("TSRepeat",             s:statement,"","")
call <sid>hi("TSString",             s:string,"","")
call <sid>hi("TSStringRegex",        )
call <sid>hi("TSStringEscape",       )
call <sid>hi("TSSymbol",             )
call <sid>hi("TSTag",                s:tag,"","")
call <sid>hi("TSTagDelimiter",       )
call <sid>hi("TSText",               )
call <sid>hi("TSStrong",             )
call <sid>hi("TSEmphasis",           )
call <sid>hi("TSUnderline",          )
call <sid>hi("TSStrike",             )
call <sid>hi("TSTitle",              )
call <sid>hi("TSLiteral",            )
call <sid>hi("TSURI",                )
call <sid>hi("TSMath",               )
call <sid>hi("TSTextReference",      )
call <sid>hi("TSEnviroment",         )
call <sid>hi("TSEnviromentName",     )
call <sid>hi("TSNote",               )
call <sid>hi("TSWarning",            )
call <sid>hi("TSDanger",             )
call <sid>hi("TSType",               s:type,"","")
call <sid>hi("TSTypeBuiltin",        s:type,"","")
call <sid>hi("TSVariable",           s:fg0,"","")
call <sid>hi("TSVariableBuiltin",    s:statement,"","")


call <sid>hi("IndentBlanklineChar",  s:comment, "", "")
