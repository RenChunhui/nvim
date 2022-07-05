vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'apple'

local api = vim.api
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

api.nvim_set_hl(0, 'Comment', { })
api.nvim_set_hl(0, 'Constant', { })
api.nvim_set_hl(0, 'String', { })
api.nvim_set_hl(0, 'Character', { })
api.nvim_set_hl(0, 'Number', { })
api.nvim_set_hl(0, 'Boolean', { })
api.nvim_set_hl(0, 'Float', { })

api.nvim_set_hl(0, 'Identifier', { })
api.nvim_set_hl(0, 'Function', { })

api.nvim_set_hl(0, 'Statement', { })
api.nvim_set_hl(0, 'Conditional', { })
api.nvim_set_hl(0, 'Repeat', { })
api.nvim_set_hl(0, 'Label', { })
api.nvim_set_hl(0, 'Operator', { })
api.nvim_set_hl(0, 'Keyword', { })
api.nvim_set_hl(0, 'Exception', { })

api.nvim_set_hl(0, 'PreProc', { })
api.nvim_set_hl(0, 'Include', { })
api.nvim_set_hl(0, 'Define', { })
api.nvim_set_hl(0, 'Macro', { })
api.nvim_set_hl(0, 'PreCondit', { })

api.nvim_set_hl(0, 'Type', { })
api.nvim_set_hl(0, 'StorageClass', { })
api.nvim_set_hl(0, 'Structure', { })
api.nvim_set_hl(0, 'Typedef', { })

api.nvim_set_hl(0, 'Special', { })
api.nvim_set_hl(0, 'SpecialChar', { })
api.nvim_set_hl(0, 'Tag', { })
api.nvim_set_hl(0, 'Delimiter', { })
api.nvim_set_hl(0, 'SpecialComment', { })
api.nvim_set_hl(0, 'Debug', { })

api.nvim_set_hl(0, 'Underlined', { })

api.nvim_set_hl(0, 'Ignore', { })

api.nvim_set_hl(0, 'Error', { })

api.nvim_set_hl(0, 'Todo', { })

api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
api.nvim_set_hl(0, '', { })
