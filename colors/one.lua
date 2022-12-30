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
api.nvim_set_hl(0, 'Include', { fg = theme.statement })
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
api.nvim_set_hl(0,'@text.literal', { link = 'Comment' })
api.nvim_set_hl(0,'@text.reference',{ link = 'Identifier' })
api.nvim_set_hl(0,'@text.title',{ link = 'Title' })
api.nvim_set_hl(0,'@text.uri ',{ link = 'Underlined' })
api.nvim_set_hl(0,'@text.underline',{ link = 'Underlined' })
api.nvim_set_hl(0,'@text.todo',{ link = 'Todo' })

api.nvim_set_hl(0,'@comment',{ link = 'Comment' })
api.nvim_set_hl(0,'@punctuation',{ link = 'Delimiter' })

api.nvim_set_hl(0,'@constant',{ link = 'Constant' })
api.nvim_set_hl(0,'@constant.builtin',{ link = 'Special' })
api.nvim_set_hl(0,'@constant.macro',{ link = 'Define' })
api.nvim_set_hl(0,'@define',{ link = 'Define' })
api.nvim_set_hl(0,'@macro',{ link = 'Macro' })
api.nvim_set_hl(0,'@string',{ link = 'String' })
api.nvim_set_hl(0,'@string.escape',{ link = 'SpecialChar' })
api.nvim_set_hl(0,'@string.special',{ link = 'SpecialChar' })
api.nvim_set_hl(0,'@character ',{ link = 'Character' })
api.nvim_set_hl(0,'@character.special',{ link = 'SpecialChar' })
api.nvim_set_hl(0,'@number ',{ link = 'Number' })
api.nvim_set_hl(0,'@boolean',{ link = 'Boolean' })
api.nvim_set_hl(0,'@float',{ link = 'Float' })

api.nvim_set_hl(0,'@function',{ link = 'Function' })
api.nvim_set_hl(0,'@function.builtin',{ link = 'Special' })
api.nvim_set_hl(0,'@function.macro',{ link = 'Macro' })
api.nvim_set_hl(0,'@parameter',{ link = 'Identifier' })
api.nvim_set_hl(0,'@method',{ link = 'Function' })
api.nvim_set_hl(0,'@field',{ link = 'Identifier' })
api.nvim_set_hl(0,'@property',{ link = 'Identifier' })
api.nvim_set_hl(0,'@constructor',{ link = 'Special' })

api.nvim_set_hl(0,'@conditional',{ link = 'Conditional' })
api.nvim_set_hl(0,'@repeat',{ link = 'Repeat' })
api.nvim_set_hl(0,'@label',{ link = 'Label' })
api.nvim_set_hl(0,'@operator',{ link = 'Operator' })
api.nvim_set_hl(0,'@keyword ',{ link = 'Keyword' })
api.nvim_set_hl(0,'@exception',{ link = 'Exception' })

api.nvim_set_hl(0,'@variable',{ link = 'Identifier' })
api.nvim_set_hl(0,'@type',{ link = 'Type' })
api.nvim_set_hl(0,'@type.builtin', {} )
api.nvim_set_hl(0,'@type.definition',{ link = 'Typedef' })
api.nvim_set_hl(0,'@storageclass',{ link = 'StorageClass' })
api.nvim_set_hl(0,'@structure',{ link = 'Structure' })
api.nvim_set_hl(0,'@namespace',{ link = 'Identifier' })
api.nvim_set_hl(0,'@include',{ link = 'Include' })
api.nvim_set_hl(0,'@preproc',{ link = 'PreProc' })
api.nvim_set_hl(0,'@debug',{ link = 'Debug' })
api.nvim_set_hl(0,'@tag',{ link = 'Tag' })

api.nvim_set_hl(0,'@variable.lua',{ fg = 'NONE' })
