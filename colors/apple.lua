vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'apple'

local colors = {
  dark = {
    red = '#ff453a',
    orange = '#ff9f0a',
    yellow = '#ffd60a',
    green = '#32d74b',
    mint = '#66d4cf',
    teal = '#6ac4dc',
    cyan = '#5ac8f5',
    blue = '#0a84ff',
    indigo = '#5e5ce6'
    purple = '#bf5af2',
    pink = '#ff375f',
    brown = '#ac8e68',
    gray1 = '#98989d',
    gray2 = '#636366',
    gray3 = '#48484a',
    gray4 = '#3a3a3c',
    gray5 = '#2c2c2e',
    gray6 = '#1c1c1e'
  }
}
