vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'github'

require('modules.themes').setup({
  dark = {
    fg         = '#c9d1d9',
    bg         = '#0d1117',
    fg_inset   = '#c9d1d9',
    bg_inset   = '#010409',
    fg_overlay = '#c9d1d9',
    bg_overlay = '#161b22',

    cursor     = '#161b22',
    highlight  = '#58a6ff',

    comment    = '#8b949e',
    constant   = '#79c0ff',
    string     = '#a5d6ff',
    statement    = '#ff7b72',
    variable   = '#ffa657',
    method     = '#d2a8ff',
    character  = '#79C0FF',

    renamed    = '#58a6ff',
    added      = '#3fb950',
    modified   = '#d29922',
    removed    = '#f85149',
  },
  light = {
    fg         = '#24292f',
    bg         = '#ffffff',
    fg_inset   = '#c9d1d9',
    bg_inset   = '#f6f8fa',
    fg_overlay = '#8b949e',
    bg_overlay = '#ffffff',

    cursor     = '#191C21',
    highlight  = '#0969da',

    comment    = '#484f58',
    constant   = '#1158c7',
    string     = '#0c2d6b',
    keyword    = '#da3633',
    variable   = '#9b4215',
    method     = '#d2a8ff',
    character  = '#79C0FF',

    renamed    = '#58a6ff',
    added      = '#3fb950',
    modified   = '#d29922',
    removed    = '#f85149',
  }
})
