vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
    '███    ██ ███████  ██████  ██    ██ ██ ███    ███',
    '████   ██ ██      ██    ██ ██    ██ ██ ████  ████',
    '██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██',
    '██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██',
    '██   ████ ███████  ██████    ████   ██ ██      ██',
    '                                                 ',
    '             [NeoVim version: 0.5.0]             ',
    '                                                 ',
    '                       ' .. vim.fn['startup#plugins']()
}

vim.g.dashboard_custom_footer = {

}
vim.g.dashboard_custom_section = {
  a = {description = {' Find file                              SPC f f'}, command = 'Telescope find_files'},
  b = {description = {' History                                SPC s h'}, command = 'Telescope search_history'},
  c = {description = {' Change colorscheme                     SPC t c'}, command = 'Telescope colorscheme'},
  v = {description = {' NeoVim configuration                   SPC a v'}, command = ':e '..HOME..'/.config/nvim/init.lua'},
}
