vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'apple'

local api = vim.api
local colors = {
  dark = {
    fg = '#9B999E',
    bg = '#1f1f24',
    fg_alt = '',
    bg_alt = '',
    cursor = '#ffffff',

    comment = '#6c7986',
    constant = '#ff9f0a',
    string = '#fc6a5d',
    character = '#d0bf69',
    number = '#d0bf69',
    method = '#a167e6',
    variable = '#67b7a4',
    statement = '#fd8f3f',
    type = '9ef1dd',
    tag = '',
    keyword = '#fc5fa3',

    renamed   = '#5ac8f5',
    added     = '#32d74b',
    modified  = '#ffd60a',
    removed   = '#ff453a',

    mint = '#66d4cf',
    teal = '#6ac4dc',
    blue = '#0a84ff',
    indigo = '#5e5ce6',
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
local theme = colors.dark

api.nvim_set_hl(0, 'Comment', { fg = theme.comment })
api.nvim_set_hl(0, 'Constant', {  })
api.nvim_set_hl(0, 'String', { fg = theme.string })
api.nvim_set_hl(0, 'Character', { fg = theme.character })
api.nvim_set_hl(0, 'Number', { fg = theme.number })
api.nvim_set_hl(0, 'Boolean', { })
api.nvim_set_hl(0, 'Float', { })

api.nvim_set_hl(0, 'Identifier', {  })
api.nvim_set_hl(0, 'Function', {  })

api.nvim_set_hl(0, 'Statement', {  })
api.nvim_set_hl(0, 'Conditional', { })
api.nvim_set_hl(0, 'Repeat', { })
api.nvim_set_hl(0, 'Label', { })
api.nvim_set_hl(0, 'Operator', { })
api.nvim_set_hl(0, 'Keyword', { fg = theme.keyword })
api.nvim_set_hl(0, 'Exception', { })

api.nvim_set_hl(0, 'PreProc', { })
api.nvim_set_hl(0, 'Include', { })
api.nvim_set_hl(0, 'Define', { })
api.nvim_set_hl(0, 'Macro', { })
api.nvim_set_hl(0, 'PreCondit', { })

api.nvim_set_hl(0, 'Type', {  })
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

api.nvim_set_hl(0, 'ColorColumn', { })
api.nvim_set_hl(0, 'Conceal', { })
api.nvim_set_hl(0, 'CurSearch', { })
api.nvim_set_hl(0, 'Cursor', { })
api.nvim_set_hl(0, 'CursorIM', { })
api.nvim_set_hl(0, 'CursorColumn', { })
api.nvim_set_hl(0, 'CursorLine', { })

api.nvim_set_hl(0, 'Directory', {  })

-- Diff
api.nvim_set_hl(0, 'DiffAdd', { fg = theme.added })
api.nvim_set_hl(0, 'DiffChange', { fg = theme.modified })
api.nvim_set_hl(0, 'DiffDelete', { })
api.nvim_set_hl(0, 'DiffText', { fg = theme.renamed })

api.nvim_set_hl(0, 'EndOfBuffer', {  })

api.nvim_set_hl(0, 'TermCursor', { })
api.nvim_set_hl(0, 'TermCursorNC', { })
api.nvim_set_hl(0, 'ErrorMsg', { })
api.nvim_set_hl(0, 'WinSeparator', { })
api.nvim_set_hl(0, 'Folded', { })
api.nvim_set_hl(0, 'FoldColumn', { })
api.nvim_set_hl(0, 'SignColumn', {  })
api.nvim_set_hl(0, 'IncSearch', { })
api.nvim_set_hl(0, 'Substitute', { })

api.nvim_set_hl(0, 'LineNr', { fg = theme.comment })
api.nvim_set_hl(0, 'LineNrAbove', { })
api.nvim_set_hl(0, 'LineNrBelow', { })
api.nvim_set_hl(0, 'CursorLineNr', {  })
api.nvim_set_hl(0, 'CursorLineSign', { })
api.nvim_set_hl(0, 'CursorLineFold', { })
api.nvim_set_hl(0, 'MatchParen', { })
api.nvim_set_hl(0, 'ModeMsg', { })
api.nvim_set_hl(0, 'MsgArea', { })
api.nvim_set_hl(0, 'MsgSeparator', { })
api.nvim_set_hl(0, 'MoreMsg', { })
api.nvim_set_hl(0, 'NonText', {  })
api.nvim_set_hl(0, 'Normal', {  fg = theme.fg, bg = theme.bg })
api.nvim_set_hl(0, 'NormalFloat', { })
api.nvim_set_hl(0, 'NormalNC', { })

api.nvim_set_hl(0, 'Pmenu', { })
api.nvim_set_hl(0, 'PmenuSel', { })
api.nvim_set_hl(0, 'PmenuSbar', { bg = theme.comment })
api.nvim_set_hl(0, 'PmenuThumb', { })

api.nvim_set_hl(0, 'Question', { })
api.nvim_set_hl(0, 'QuickFixLine', { })
api.nvim_set_hl(0, 'Search', { })
api.nvim_set_hl(0, 'SpecialKey', { })

api.nvim_set_hl(0, 'SpellBad', { })
api.nvim_set_hl(0, 'SpellCap', { })
api.nvim_set_hl(0, 'SpellLocal', { })
api.nvim_set_hl(0, 'SpellRare', { })

api.nvim_set_hl(0, 'StatusLine', { })
api.nvim_set_hl(0, 'StatusLineNC', { })

api.nvim_set_hl(0, 'TabLine', { })
api.nvim_set_hl(0, 'TabLineFill', { })
api.nvim_set_hl(0, 'TabLineSel', { })

api.nvim_set_hl(0, 'Title', { })
api.nvim_set_hl(0, 'Visual', { })
api.nvim_set_hl(0, 'VisualNOS', { })
api.nvim_set_hl(0, 'WarningMsg', { })
api.nvim_set_hl(0, 'Whitespace', { })
api.nvim_set_hl(0, 'WildMenu', { })
api.nvim_set_hl(0, 'WinBar', { })
api.nvim_set_hl(0, 'WinBarNC', { })
api.nvim_set_hl(0, 'Menu', { })
api.nvim_set_hl(0, 'Scrollbar', { })
api.nvim_set_hl(0, 'Tooltip', { })

-- LSP
api.nvim_set_hl(0, 'DiagnosticLineNrError', { })
api.nvim_set_hl(0, 'DiagnosticLineNrWarn', { fg = theme.modified })
api.nvim_set_hl(0, 'DiagnosticLineNrInfo', { fg = theme.renamed })
api.nvim_set_hl(0, 'DiagnosticLineNrHint', { fg = theme.added })

-- Treesitter
-- @see https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
api.nvim_set_hl(0, 'TSAttribute', {  })
api.nvim_set_hl(0, 'TSBoolean', {  })
api.nvim_set_hl(0, 'TSCharacter', { fg = theme.character })
api.nvim_set_hl(0, 'TSCharacterSpecial', { })
api.nvim_set_hl(0, 'TSComment', { fg = theme.comment })
api.nvim_set_hl(0, 'TSConditional', {  })
api.nvim_set_hl(0, 'TSConstant', {  })
api.nvim_set_hl(0, 'TSConstBuiltin', { })
api.nvim_set_hl(0, 'TSConstMacro', { })
api.nvim_set_hl(0, 'TSConstructor', {  })
api.nvim_set_hl(0, 'TSDebug', { })
api.nvim_set_hl(0, 'TSDefine', { })
api.nvim_set_hl(0, 'TSError', { })
api.nvim_set_hl(0, 'TSException', {  })
api.nvim_set_hl(0, 'TSField', { })
api.nvim_set_hl(0, 'TSFloat', { })
api.nvim_set_hl(0, 'TSFunction', { })
api.nvim_set_hl(0, 'TSFuncBuiltin', { })
api.nvim_set_hl(0, 'TSFuncMacro', { })
api.nvim_set_hl(0, 'TSInclude', {  })
api.nvim_set_hl(0, 'TSKeyword', { fg = theme.keyword })
api.nvim_set_hl(0, 'TSKeywordFunction', {  })
api.nvim_set_hl(0, 'TSKeywordOperator', {  })
api.nvim_set_hl(0, 'TSKeywordReturn', { })
api.nvim_set_hl(0, 'TSLabel', { })
api.nvim_set_hl(0, 'TSMethod', {  })
api.nvim_set_hl(0, 'TSNamespace', { })
api.nvim_set_hl(0, 'TSNone', { })
api.nvim_set_hl(0, 'TSNumber', { fg = theme.number })
api.nvim_set_hl(0, 'TSOperator', { })
api.nvim_set_hl(0, 'TSParameter', { })
api.nvim_set_hl(0, 'TSParameterReference', { })
api.nvim_set_hl(0, 'TSPreProc', { })
api.nvim_set_hl(0, 'TSProperty', { })
api.nvim_set_hl(0, 'TSPunctDelimiter', { })
api.nvim_set_hl(0, 'TSPunctBracket', { })
api.nvim_set_hl(0, 'TSPunctSpecial', { })
api.nvim_set_hl(0, 'TSRepeat', {  })
api.nvim_set_hl(0, 'TSStorageClass', { })
api.nvim_set_hl(0, 'TSString', { fg = theme.string })
api.nvim_set_hl(0, 'TSStringRegex', { })
api.nvim_set_hl(0, 'TSStringEscape', { })
api.nvim_set_hl(0, 'TSStringSpecial', { })
api.nvim_set_hl(0, 'TSSymbol', { })
api.nvim_set_hl(0, 'TSTag', { })
api.nvim_set_hl(0, 'TSTagAttribute', { })
api.nvim_set_hl(0, 'TSTagDelimiter', { })
api.nvim_set_hl(0, 'TSText', { })
api.nvim_set_hl(0, 'TSStrong', { })
api.nvim_set_hl(0, 'TSEmphasis', { })
api.nvim_set_hl(0, 'TSUnderline', { })
api.nvim_set_hl(0, 'TSStrike', { })
api.nvim_set_hl(0, 'TSTitle', { })
api.nvim_set_hl(0, 'TSLiteral', { })
api.nvim_set_hl(0, 'TSURI', { })
api.nvim_set_hl(0, 'TSMath', { })
api.nvim_set_hl(0, 'TSTextReference', { })
api.nvim_set_hl(0, 'TSEnvironment', { })
api.nvim_set_hl(0, 'TSEnvironmentName', { })
api.nvim_set_hl(0, 'TSNote', { })
api.nvim_set_hl(0, 'TSWarning', { })
api.nvim_set_hl(0, 'TSDanger', { })
api.nvim_set_hl(0, 'TSTodo', { })
api.nvim_set_hl(0, 'TSType', { })
api.nvim_set_hl(0, 'TSTypeBuiltin', { })
api.nvim_set_hl(0, 'TSTypeQualifier', { })
api.nvim_set_hl(0, 'TSTypeDefinition', { })
api.nvim_set_hl(0, 'TSVariable', {  })
api.nvim_set_hl(0, 'TSVariableBuiltin', { })
