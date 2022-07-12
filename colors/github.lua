vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'github'

local api = vim.api
-- bg = canvas.default
-- fg = fg.default
-- bg_alt = canvas.subtle
-- comment = fg.muted
local theme = {
  bg = '#0d1117',
  fg = '#c9d1d9',
  bg_alt = '#161b22',
  fg_alt = '#8b949e',
  border = '#30363d',

  comment = '#8b949e',
  keyword = '#ff7b72',
  string = '#a5d6ff',
  constant = '#79c0ff',
  method = '#d2a8ff',
  tag = '#7ee787',

  renamed   = '#58a6ff',
  added     = '#3fb950',
  modified  = '#d29922',
  removed   = '#f85149',
}

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

api.nvim_set_hl(0, 'Error', { fg = theme.removed })

api.nvim_set_hl(0, 'Todo', { })

api.nvim_set_hl(0, 'ColorColumn', { })
api.nvim_set_hl(0, 'Conceal', { })
api.nvim_set_hl(0, 'CurSearch', { })
api.nvim_set_hl(0, 'Cursor', { })
api.nvim_set_hl(0, 'CursorIM', { })
api.nvim_set_hl(0, 'CursorColumn', { })
api.nvim_set_hl(0, 'CursorLine', { })

api.nvim_set_hl(0, 'Directory', { fg = theme.fg })

-- Diff
api.nvim_set_hl(0, 'DiffAdd', { fg = theme.added })
api.nvim_set_hl(0, 'DiffChange', { fg = theme.modified })
api.nvim_set_hl(0, 'DiffDelete', { fg = theme.removed })
api.nvim_set_hl(0, 'DiffText', { fg = theme.renamed })

api.nvim_set_hl(0, 'EndOfBuffer', {  })

api.nvim_set_hl(0, 'TermCursor', { })
api.nvim_set_hl(0, 'TermCursorNC', { })
api.nvim_set_hl(0, 'ErrorMsg', { })
api.nvim_set_hl(0, 'WinSeparator', { })
api.nvim_set_hl(0, 'Folded', { })
api.nvim_set_hl(0, 'FoldColumn', { })
api.nvim_set_hl(0, 'SignColumn', { bg = theme.bg })
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
api.nvim_set_hl(0, 'NonText', { fg = theme.bg })
api.nvim_set_hl(0, 'Normal', { fg = theme.fg, bg = theme.bg })
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

api.nvim_set_hl(0, 'StatusLine', { fg = theme.fg_alt, bg = theme.bg_alt })
api.nvim_set_hl(0, 'StatusLineNC', { })
api.nvim_set_hl(0, 'VertSplit', { fg = theme.border, bg = theme.bg })

api.nvim_set_hl(0, 'TabLine', { fg = theme.fg, bg = theme.bg_alt })
api.nvim_set_hl(0, 'TabLineFill', { bg = theme.bg_alt })
api.nvim_set_hl(0, 'TabLineSel', { fg = theme.fg, bg = theme.bg })

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
api.nvim_set_hl(0, 'DiagnosticLineNrError', { fg = theme.removed })
api.nvim_set_hl(0, 'DiagnosticLineNrWarn', { fg = theme.modified })
api.nvim_set_hl(0, 'DiagnosticLineNrInfo', { fg = theme.renamed })
api.nvim_set_hl(0, 'DiagnosticLineNrHint', { fg = theme.added })

-- Treesitter
-- @see https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
api.nvim_set_hl(0, 'TSAttribute', {  })
api.nvim_set_hl(0, 'TSBoolean', {  })
api.nvim_set_hl(0, 'TSCharacter', {  })
api.nvim_set_hl(0, 'TSCharacterSpecial', { })
api.nvim_set_hl(0, 'TSComment', { fg = theme.comment })
api.nvim_set_hl(0, 'TSConditional', { fg = theme.keyword })
api.nvim_set_hl(0, 'TSConstant', { fg = theme.constant })
api.nvim_set_hl(0, 'TSConstBuiltin', { })
api.nvim_set_hl(0, 'TSConstMacro', { })
api.nvim_set_hl(0, 'TSConstructor', {  })
api.nvim_set_hl(0, 'TSDebug', { })
api.nvim_set_hl(0, 'TSDefine', { })
api.nvim_set_hl(0, 'TSError', { })
api.nvim_set_hl(0, 'TSException', {  })
api.nvim_set_hl(0, 'TSField', { })
api.nvim_set_hl(0, 'TSFloat', { })
api.nvim_set_hl(0, 'TSFunction', { fg = theme.method })
api.nvim_set_hl(0, 'TSFuncBuiltin', { })
api.nvim_set_hl(0, 'TSFuncMacro', { })
api.nvim_set_hl(0, 'TSInclude', { fg = theme.keyword })
api.nvim_set_hl(0, 'TSKeyword', { fg = theme.keyword })
api.nvim_set_hl(0, 'TSKeywordFunction', {  })
api.nvim_set_hl(0, 'TSKeywordOperator', {  })
api.nvim_set_hl(0, 'TSKeywordReturn', { })
api.nvim_set_hl(0, 'TSLabel', { })
api.nvim_set_hl(0, 'TSMethod', {  })
api.nvim_set_hl(0, 'TSNamespace', { })
api.nvim_set_hl(0, 'TSNone', { })
api.nvim_set_hl(0, 'TSNumber', {  })
api.nvim_set_hl(0, 'TSOperator', { fg = theme.keyword })
api.nvim_set_hl(0, 'TSParameter', { })
api.nvim_set_hl(0, 'TSParameterReference', { })
api.nvim_set_hl(0, 'TSPreProc', { })
api.nvim_set_hl(0, 'TSProperty', { fg = theme.constant})
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
api.nvim_set_hl(0, 'TSTag', { fg = theme.tag })
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
