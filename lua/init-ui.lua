-- Dashboard

HOME = vim.fn.expand('$HOME')

vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
    '███    ██ ███████  ██████  ██    ██ ██ ███    ███',
    '████   ██ ██      ██    ██ ██    ██ ██ ████  ████',
    '██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██',
    '██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██',
    '██   ████ ███████  ██████    ████   ██ ██      ██',
    '                                                 ',
    '             [NeoVim version: 0.5.0]             ',
    '                                                 '
}

vim.g.dashboard_custom_footer = {}
vim.g.dashboard_custom_section = {
  a = {description = {' Find file                              SPC f f'}, command = 'Telescope find_files'},
  b = {description = {' History                                SPC s h'}, command = 'Telescope search_history'},
  c = {description = {' Change colorscheme                     SPC t c'}, command = 'Telescope colorscheme'},
  v = {description = {' NeoVim configuration                   SPC a v'}, command = ':e '..HOME..'/.config/nvim/init.lua'},
}


-- Themes
vim.g.neon_style = "doom"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
