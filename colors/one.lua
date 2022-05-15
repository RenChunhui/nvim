vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'one'

local api = vim.api
local theme = {
  fg        = '#abb2bf',
  bg        = '#282c34',
  fg_alt    = '#9da5b4',
  bg_alt    = '#21252b',
  accent    = '#528bff',
  cursor    = '#2B323D',
  comment   = '#5c6370',
  constant  = '#d19a66',
  string    = '#98c379',
  character = '#98c379',
  variable  = '#e06c75',
  method    = '#61afef',
  statement = '#c678dd',
  storage   = '#c678dd',
  type      = '#56b6c2',
  property  = '#abb2bf',
  tag       = '#e06c75',
  pmenu     = '#242831',
  wildmenu  = '#393F4D',
  renamed   = '#33a0ff',
  added     = '#43d08a',
  modified  = '#e0c285',
  removed   = '#e05252',
}

api.nvim_set_hl(0, 'Comment', { fg = theme.fg })

api.nvim_set_hl(0, 'Constant', { fg = theme.constant })
api.nvim_set_hl(0, 'String', { fg = theme.string })
api.nvim_set_hl(0, 'Character', { fg = theme.character })
api.nvim_set_hl(0, 'Number', {})
api.nvim_set_hl(0, 'Boolean', {})
api.nvim_set_hl(0, 'Float', {})

api.nvim_set_hl(0, 'Identifier', { fg = theme.variable })
api.nvim_set_hl(0, 'Function', { fg = theme.method })

api.nvim_set_hl(0, 'Statement', { fg = theme.statement })
api.nvim_set_hl(0, 'Conditional', {})
api.nvim_set_hl(0, 'Repeat', {})
api.nvim_set_hl(0, 'Label', {})
api.nvim_set_hl(0, 'Operator', {})
api.nvim_set_hl(0, 'Keyword', { fg = theme.statement })
api.nvim_set_hl(0, 'Exception', {})

api.nvim_set_hl(0, 'PreProc', {})
api.nvim_set_hl(0, 'Include', {})
api.nvim_set_hl(0, 'Define', {})
api.nvim_set_hl(0, 'Macro', {})
api.nvim_set_hl(0, 'PreCondit', {})

api.nvim_set_hl(0, 'Type', {})
api.nvim_set_hl(0, 'StorageClass', {})
api.nvim_set_hl(0, 'Structure', {})
api.nvim_set_hl(0, 'Typedef', {})

api.nvim_set_hl(0, 'Special', {})
api.nvim_set_hl(0, 'SpecialChar', {})
api.nvim_set_hl(0, 'Tag', {})
api.nvim_set_hl(0, 'Delimiter', {})
api.nvim_set_hl(0, 'SpecialComment', {})
api.nvim_set_hl(0, 'Debug', {})

api.nvim_set_hl(0, 'Underlined', {})

api.nvim_set_hl(0, 'Ignore', {})

api.nvim_set_hl(0, 'Error', {})

api.nvim_set_hl(0, 'Todo', {})

api.nvim_set_hl(0, 'ColorColumn', {})
api.nvim_set_hl(0, 'Conceal', {})
api.nvim_set_hl(0, 'CurSearch', {})
api.nvim_set_hl(0, 'Cursor', {})
api.nvim_set_hl(0, 'CursorIM', {})
api.nvim_set_hl(0, 'CursorColumn', {})
api.nvim_set_hl(0, 'CursorLine', { bg = theme.cursor })

api.nvim_set_hl(0, 'Directory', { fg = theme.fg })

-- Diff
api.nvim_set_hl(0, 'DiffAdd', { fg = theme.added })
api.nvim_set_hl(0, 'DiffChange', { fg = theme.modified })
api.nvim_set_hl(0, 'DiffDelete', { fg = theme.removed })
api.nvim_set_hl(0, 'DiffText', { fg = theme.renamed })

api.nvim_set_hl(0, 'EndOfBuffer', { fg = theme.bg })

api.nvim_set_hl(0, 'TermCursor', {})
api.nvim_set_hl(0, 'TermCursorNC', {})
api.nvim_set_hl(0, 'ErrorMsg', {})
api.nvim_set_hl(0, 'WinSeparator', {})
api.nvim_set_hl(0, 'Folded', {})
api.nvim_set_hl(0, 'FoldColumn', {})
api.nvim_set_hl(0, 'SignColumn', { bg = theme.bg })
api.nvim_set_hl(0, 'IncSearch', {})
api.nvim_set_hl(0, 'Substitute', {})

api.nvim_set_hl(0, 'LineNr', { fg = theme.comment })
api.nvim_set_hl(0, 'LineNrAbove', {})
api.nvim_set_hl(0, 'LineNrBelow', {})
api.nvim_set_hl(0, 'CursorLineNr', { fg = theme.fg })
api.nvim_set_hl(0, 'CursorLineSign', {})
api.nvim_set_hl(0, 'CursorLineFold', {})
api.nvim_set_hl(0, 'MatchParen', {})
api.nvim_set_hl(0, 'ModeMsg', {})
api.nvim_set_hl(0, 'MsgArea', {})
api.nvim_set_hl(0, 'MsgSeparator', {})
api.nvim_set_hl(0, 'MoreMsg', {})
api.nvim_set_hl(0, 'NonText', { fg = theme.bg })
api.nvim_set_hl(0, 'Normal', { fg = theme.fg, bg = theme.bg })
api.nvim_set_hl(0, 'NormalFloat', {})
api.nvim_set_hl(0, 'NormalNC', {})

api.nvim_set_hl(0, 'Pmenu', { fg = theme.fg, bg = theme.pmenu })
api.nvim_set_hl(0, 'PmenuSel', { fg = theme.fg, bg = theme.wildmenu })
api.nvim_set_hl(0, 'PmenuSbar', { bg = theme.comment })
api.nvim_set_hl(0, 'PmenuThumb', { bg = theme.pmenu })

api.nvim_set_hl(0, 'Question', {})
api.nvim_set_hl(0, 'QuickFixLine', {})
api.nvim_set_hl(0, 'Search', {})
api.nvim_set_hl(0, 'SpecialKey', { fg = theme.bg })
api.nvim_set_hl(0, 'SpellBad', {})
api.nvim_set_hl(0, 'SpellCap', {})
api.nvim_set_hl(0, 'SpellLocal', {})
api.nvim_set_hl(0, 'SpellRare', {})

api.nvim_set_hl(0, 'StatusLine', { fg = theme.fg_alt, bg = theme.bg_alt })
api.nvim_set_hl(0, 'StatusLineNC', {})
api.nvim_set_hl(0, 'VertSplit', { fg = theme.bg, bg = theme.bg_alt })

api.nvim_set_hl(0, 'TabLine', { fg = theme.fg, bg = theme.bg_alt })
api.nvim_set_hl(0, 'TabLineFill', { bg = theme.bg_alt })
api.nvim_set_hl(0, 'TabLineSel', { fg = theme.fg, bg = theme.bg })

api.nvim_set_hl(0, 'Title', {})
api.nvim_set_hl(0, 'Visual', {})
api.nvim_set_hl(0, 'VisualNOS', {})
api.nvim_set_hl(0, 'WarningMsg', {})
api.nvim_set_hl(0, 'Whitespace', {})
api.nvim_set_hl(0, 'WildMenu', {})
api.nvim_set_hl(0, 'Menu', {})
api.nvim_set_hl(0, 'Scrollbar', {})
api.nvim_set_hl(0, 'Tooltip', {})

-- LSP
api.nvim_set_hl(0, 'DiagnosticLineNrError', { fg = theme.removed })
api.nvim_set_hl(0, 'DiagnosticLineNrWarn', { fg = theme.modified })
api.nvim_set_hl(0, 'DiagnosticLineNrInfo', { fg = theme.renamed })
api.nvim_set_hl(0, 'DiagnosticLineNrHint', { fg = theme.added })

-- Treesitter
-- @see https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
api.nvim_set_hl(0, 'TSAttribute', { fg = theme.constant })
api.nvim_set_hl(0, 'TSBoolean', { fg = theme.constant })
api.nvim_set_hl(0, 'TSCharacter', { fg = theme.character })
api.nvim_set_hl(0, 'TSCharacterSpecial', {})
api.nvim_set_hl(0, 'TSComment', { fg = theme.comment })
api.nvim_set_hl(0, 'TSConditional', { fg = theme.statement })
api.nvim_set_hl(0, 'TSConstant', { fg = theme.constant })
api.nvim_set_hl(0, 'TSConstBuiltin', {})
api.nvim_set_hl(0, 'TSConstMacro', {})
api.nvim_set_hl(0, 'TSConstructor', { fg = theme.type })
api.nvim_set_hl(0, 'TSDebug', {})
api.nvim_set_hl(0, 'TSDefine', {})
api.nvim_set_hl(0, 'TSError', { fg = theme.removed })
api.nvim_set_hl(0, 'TSException', { fg = theme.statement })
api.nvim_set_hl(0, 'TSField', {})
api.nvim_set_hl(0, 'TSFloat', { fg = theme.constant })
api.nvim_set_hl(0, 'TSFunction', { fg = theme.method })
api.nvim_set_hl(0, 'TSFuncBuiltin', {})
api.nvim_set_hl(0, 'TSFuncMacro', {})
api.nvim_set_hl(0, 'TSInclude', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeyword', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeywordFunction', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeywordOperator', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeywordReturn', {})
api.nvim_set_hl(0, 'TSLabel', {})
api.nvim_set_hl(0, 'TSMethod', {})
api.nvim_set_hl(0, 'TSNamespace', { fg = theme.statement })
api.nvim_set_hl(0, 'TSNone', {})
api.nvim_set_hl(0, 'TSNumber', { fg = theme.constant })
api.nvim_set_hl(0, 'TSOperator', { fg = theme.type })
api.nvim_set_hl(0, 'TSParameter', { fg = theme.fg })
api.nvim_set_hl(0, 'TSParameterReference', {})
api.nvim_set_hl(0, 'TSPreProc', {})
api.nvim_set_hl(0, 'TSProperty', {})
api.nvim_set_hl(0, 'TSPunctDelimiter', {})
api.nvim_set_hl(0, 'TSPunctBracket', { fg = theme.fg })
api.nvim_set_hl(0, 'TSPunctSpecial', {})
api.nvim_set_hl(0, 'TSRepeat', { fg = theme.statement })
api.nvim_set_hl(0, 'TSStorageClass', {})
api.nvim_set_hl(0, 'TSString', { fg = theme.string })
api.nvim_set_hl(0, 'TSStringRegex', {})
api.nvim_set_hl(0, 'TSStringEscape', {})
api.nvim_set_hl(0, 'TSStringSpecial', {})
api.nvim_set_hl(0, 'TSSymbol', {})
api.nvim_set_hl(0, 'TSTag', { fg = theme.tag })
api.nvim_set_hl(0, 'TSTagAttribute', {})
api.nvim_set_hl(0, 'TSTagDelimiter', {})
api.nvim_set_hl(0, 'TSText', {})
api.nvim_set_hl(0, 'TSStrong', {})
api.nvim_set_hl(0, 'TSEmphasis', {})
api.nvim_set_hl(0, 'TSUnderline', {})
api.nvim_set_hl(0, 'TSStrike', {})
api.nvim_set_hl(0, 'TSTitle', {})
api.nvim_set_hl(0, 'TSLiteral', {})
api.nvim_set_hl(0, 'TSURI', {})
api.nvim_set_hl(0, 'TSMath', {})
api.nvim_set_hl(0, 'TSTextReference', {})
api.nvim_set_hl(0, 'TSEnvironment', {})
api.nvim_set_hl(0, 'TSEnvironmentName', {})
api.nvim_set_hl(0, 'TSNote', {})
api.nvim_set_hl(0, 'TSWarning', {})
api.nvim_set_hl(0, 'TSDanger', {})
api.nvim_set_hl(0, 'TSTodo', {})
api.nvim_set_hl(0, 'TSType', { fg = theme.type })
api.nvim_set_hl(0, 'TSTypeBuiltin', { fg = theme.type })
api.nvim_set_hl(0, 'TSTypeQualifier', {})
api.nvim_set_hl(0, 'TSTypeDefinition', {})
api.nvim_set_hl(0, 'TSVariable', { fg = theme.variable })
api.nvim_set_hl(0, 'TSVariableBuiltin', { fg = theme.statement })
