" 关闭图标高亮
let g:defx_icons_enable_syntax_highlight = 0

" 默认图标
let g:defx_icons_default_icon = g:map#file_icon['file_text_o']

let g:defx_icons_extensions = {
        \ 'vim': { 'icon': g:map#file_icon['vim']}
  \ }

let g:defx_icons_exact_matches = {
        \ '.gitignore':        { 'icon': g:map#file_icon['git']},
        \ '.gitconfig':        { 'icon': g:map#file_icon['git']},
        \ '.gitkeep':          { 'icon': g:map#file_icon['git']},
        \ '.npmrc':            { 'icon': g:map#file_icon['npm']},
        \ 'package.json':      { 'icon': g:map#file_icon['npm']},
        \ 'package-lock.json': { 'icon': g:map#file_icon['npm']},
        \ 'angular.json':      { 'icon': g:map#file_icon['angular'] },
  \ }
