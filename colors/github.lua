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
    fg_overlay = '#8b949e',
    bg_overlay = '#161b22',

    cursor     = '#191C21',

    comment    = '#8b949e',
    constant   = '#79c0ff',
    string     = '#a5d6ff',
    keyword    = '#ff7b72',
    variable   = '#ffa657',
    method     = '#d2a8ff',

    renamed    = '#58a6ff',
    added      = '#3fb950',
    modified   = '#d29922',
    removed    = '#f85149',
  },
  light = {

  }
})
