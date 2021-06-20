" Operator
syntax match   javascriptOpSymbols             /[+\-*/%\^~=<>&|?]\+/ contains=javascriptOpSymbol,javascriptInvalidOp nextgroup=@javascriptComments,@javascriptExpression skipwhite skipempty

syntax match   javascriptInvalidOp             contained /[+\-*/%\^~=!<>&|?:]\+/

syntax match   javascriptOpSymbol              contained /\(=\|?\)/ nextgroup=@javascriptExpression skipwhite skipempty " 2: =, ?
syntax match   javascriptOpSymbol              contained /===\?/ " 2: ==, ===
syntax match   javascriptOpSymbol              contained /\(>>>=\|>>>\|>>=\|>>\|>=\|>\)/ " 6: >>>=, >>>, >>=, >>, >=, >
syntax match   javascriptOpSymbol              contained /\(<<=\|<<\|<=\|<\)/ " 4: <<=, <<, <=, <
syntax match   javascriptOpSymbol              contained /\(||\||=\||\)/ " 3: ||, |=, |
syntax match   javascriptOpSymbol              contained /\(&&\|&=\|&\)/ " 3: &&, &=, &
syntax match   javascriptOpSymbol              contained /\(*=\|*\)/ " 2: *=, *
syntax match   javascriptOpSymbol              contained /\(%=\|%\)/ " 2: %=, %
syntax match   javascriptOpSymbol              contained /\(\/=\|\/\)/ " 2: /=, /
syntax match   javascriptOpSymbol              contained /\(\^\|\~\)/ " 2: ^, ~

syntax match   javascriptOpSymbols             /!\+/ nextgroup=javascriptRegexpString,javascriptInvalidOp " 1: !
syntax match   javascriptOpSymbols             /!==\?/ nextgroup=javascriptRegexpString,javascriptInvalidOp " 2: !=, !==
syntax match   javascriptOpSymbols             /+\(+\|=\)\?/ nextgroup=javascriptRegexpString,javascriptInvalidOp " 3: +, ++, +=
syntax match   javascriptOpSymbols             /-\(-\|=\)\?/ nextgroup=javascriptRegexpString,javascriptInvalidOp " 3: -, --, -=
" spread operator
syntax match   javascriptSpreadOp              contained /\.\.\./ " 1
" exponentiation operator
syntax match   javascriptOpSymbol              contained /\(\*\*\|\*\*=\)/ " 2: **, **=

" Comment
syntax keyword javascriptCommentTodo           contained TODO FIXME XXX TBD
syntax region  javascriptLineComment           start="//" end="\n" contains=@Spell,javascriptCommentTodo
syntax region  javascriptComment               start="/\*"  end="\*/" contains=@Spell,javascriptCommentTodo extend fold
syntax region  javascriptComment               start="<!--"  end="--\s*>" contains=@Spell,javascriptCommentTodo extend fold
syntax cluster javascriptComments              contains=javascriptDocComment,javascriptComment,javascriptLineComment

" JSDoc
syntax case ignore

syntax region  javascriptDocComment            start="/\*\*"  end="\*/" contains=javascriptDocNotation,javascriptCommentTodo,@Spell fold keepend
syntax match   javascriptDocNotation           contained /\W@/ nextgroup=javascriptDocTags

syntax keyword javascriptDocTags               contained constant constructor constructs function ignore inner private public readonly static
syntax keyword javascriptDocTags               contained const dict expose inheritDoc interface nosideeffects override protected struct
syntax keyword javascriptDocTags               contained example global

" JavaScript Prototype
syntax keyword javascriptPrototype             prototype

syntax keyword javascriptImport                from as
syntax keyword javascriptImport                import nextgroup=javascriptImportPattern skipwhite skipempty
syntax keyword javascriptExport                export from default

syntax match   javascriptImportPattern         contained /\*/

" Keywords
syntax keyword javascriptIdentifier            arguments this globalThis nextgroup=@javascriptAfterIdentifier
syntax keyword javascriptVariable              let var const nextgroup=javascriptIdentifierName skipwhite
syntax keyword javascriptOperator              delete instanceof typeof void in nextgroup=@javascriptValue,@javascriptTypes skipwhite skipempty
syntax keyword javascriptOperator              new nextgroup=javascriptNewTarget,@javascriptValue,@javascriptTypes skipwhite skipempty
syntax match   javascriptNewTarget             contained /.target/ contains=javascriptTarget
syntax keyword javascriptTarget                contained target
syntax keyword javascriptForOperator           contained in of
syntax keyword javascriptBoolean               true false nextgroup=@javascriptComments skipwhite skipempty
syntax keyword javascriptNull                  null undefined nextgroup=@javascriptComments skipwhite skipempty

" Statement Keywords
syntax keyword javascriptConditional           if else
syntax keyword javascriptConditionalElse       else
syntax keyword javascriptRepeat                do while for nextgroup=javascriptLoopParen skipwhite skipempty
syntax keyword javascriptBranch                break continue
syntax keyword javascriptSwitch                switch nextgroup=javascriptSwitchExpression skipwhite skipempty
syntax keyword javascriptCase                  contained case
syntax keyword javascriptDefault               contained default nextgroup=javascriptCaseColon skipwhite skipempty
syntax keyword javascriptStatementKeyword      with yield
syntax keyword javascriptReturn                return nextgroup=@javascriptValue,javascriptClassSuper,@javascriptComments skipwhite
syntax keyword javascriptYield                 yield nextgroup=javascriptYieldGen skipwhite
syntax match   javascriptYieldGen              contained /\*/

syntax keyword javascriptTry                   try
syntax keyword javascriptExceptions            catch throw finally
syntax keyword javascriptDebugger              debugger


