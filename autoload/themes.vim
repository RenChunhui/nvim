" themes.vim
" color palette
" base00 - Default Background
" base01 - Lighter Background (Used for status bars, line number and folding marks)
" base02 - Selection Background
" base03 - Comments, Invisibles, Line Highlighting
" base04 - Dark Foreground (Used for status bars)
" base05 - Default Foreground, Caret, Delimiters, Operators
" base06 - Light Foreground (Not often used)
" base07 - Light Background (Not often used)
" base08 - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
" base09 - Integers, Boolean, Constants, XML Attributes, Markup Link Url
" base0A - Classes, Markup Bold, Search Text Background
" base0B - Strings, Inherited Class, Markup Code, Diff Inserted
" base0C - Support, Regular Expressions, Escape Characters, Markup Quotes
" base0D - Functions, Methods, Attribute IDs, Headings
" base0E - Keywords, Storage, Selector, Markup Italic, Diff Changed
" base0F - Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

" 调色板
let g:themes#palette = {
                        \ 'onedark': {
                            \ 'gui00': '282C34',
                            \ 'gui01': '353b45',
                            \ 'gui02': '2C323C',
                            \ 'gui03': '545862',
                            \ 'gui04': 'ABB2BF',
                            \ 'gui05': 'abb2bf',
                            \ 'gui06': 'b6bdca',
                            \ 'gui07': 'c8ccd4',
                            \ 'gui08': 'c8ccd4',
                            \ 'gui09': 'd19a66',
                            \ 'gui0A': 'e5c07b',
                            \ 'gui0B': '98c379',
                            \ 'gui0C': '56b6c2',
                            \ 'gui0D': '61afef',
                            \ 'gui0E': 'c678dd',
                            \ 'gui0F': 'be5046'
                            \ },
                        \ }


function! themes#add(group,guifg,guibg) abort
    if a:guifg != ""
        exec "hi " . a:group . " guifg=#" . g:themes#palette[g:colors_name][a:guifg]
    endif
    if a:guibg != ""
        exec "hi " . a:group . " guibg=#" . g:themes#palette[g:colors_name][a:guibg]
    endif
endfunction
