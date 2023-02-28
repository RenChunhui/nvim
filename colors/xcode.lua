vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'xcode'

require('modules.themes.init').setup({
  bg = '#282B35',
  base01 = '#3D4048',
  base02 = '#53555D',
  comment = '#686A71',
  base04 = '#7E8086',
  fg = '#939599',
  base06 = '#A9AAAE',
  base07 = '#BEBFC2',
  variable = '#B21889',
  constant = '#786DC5',
  base0A = '#438288',
  string = '#DF0002',
  base0C = '#00A0BE',
  method = '#790EAD',
  keyword = '#B21889'
})
