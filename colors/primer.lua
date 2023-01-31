vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'primer'

local cmd = vim.cmd
local fn = vim.fn
local api = vim.api
local colors = {
  fg = '#c9d1d9',
  bg = '#0d1117',
  sidebar_fg = '#c9d1d9',
  sidebar_bg = '#010409',
  status_fg = '#8b949e',
  status_bg = '#010409',
  panel_bg = '#161b22',
  cursor = '#191C21',

  comment = '#8b949e',
  constant = '#79c0ff',
  string = '#a5d6ff',
  keyword = '#ff7b72',
  variable = '#ffa657',
  method = '#d2a8ff',

  renamed   = '#58a6ff',
  added     = '#3fb950',
  modified  = '#d29922',
  removed   = '#f85149',
}
local theme = {
  syntax = {
    comment = '#8b949e',
    constant = '#79c0ff',
    entity = '#d2a8ff',
    modifier = '#c9d1d9',
    tag = '#7ee787',
    keyword = '#ff7b72',
    string = '#a5d6ff',
    variable = '#ffa657',
  },
  fg = {
    default = '#c9d1d9',
    muted = '#8b949e',
    subtle = '#6e7681',
    onEmphasis = '#ffffff'
  },
  canvas = {
    default = '#0d1117',
    overlay = '#161b22',
    inset = '#010409',
    subtle = '#161b22'
  },
  border = {
    default = '#30363d',
    muted = '#21262d',
    subtle = '' -- rgba(240,246,252,0.1)
  },
  neutral = {
    emphasisPlus = '#6e7681',
    emphasis = '#6e7681',
    muted = '', -- rgba(110,118,129,0.4)
    subtle = '' -- rgba(110,118,129,0.1)
  },
  accent = {
    fg = '#58a6ff',
    emphasis = '#1f6feb',
    muted = '', -- rgba(56,139,253,0.4)
    subtle = '' -- rgba(56,139,253,0.15)
  },
  success = {
    fg = '#3fb950',
    emphasis = '#238636',
    muted = '', -- rgba(46,160,67,0.4)
    subtle = '' -- rgba(46,160,67,0.15)
  },
  attention = {
    fg = '#d29922',
    emphasis = '#9e6a03',
    muted = '', -- rgba(187,128,9,0.4)
    subtle = '' -- rgba(187,128,9,0.15)
  },
  severe = {
    fg = '#db6d28',
    emphasis = '#bd561d',
    muted = '', -- rgba(219,109,40,0.4)
    subtle = '' -- rgba(219,109,40,0.15)
  },
  danger = {
    fg = '#f85149',
    emphasis = '#da3633',
    muted = '', -- rgba(248,81,73,0.4)
    subtle = '' -- rgba(248,81,73,0.15)
  },
  open = {
    fg = '#3fb950',
    emphasis = '#238636',
    muted = '', -- rgba(46,160,67,0.4)
    subtle = '' -- rgba(46,160,67,0.15)
  },
  closed = {
    fg = '#f85149',
    emphasis = '#da3633',
    muted = '', -- rgba(248,81,73,0.4)
    subtle = '' -- rgba(248,81,73,0.15)
  },
  done = {
    fg = '#a371f7',
    emphasis = '#8957e5',
    muted = '', -- rgba(163,113,247,0.4)
    subtle = '' -- rgba(163,113,247,0.15)
  },
  sponsors = {
    fg = '#db61a2',
    emphasis = '#bf4b8a',
    muted = '', -- rgba(219,97,162,0.4)
    subtle = '' -- rgba(219,97,162,0.15)
  },
}

local function hl(group,opts)
  api.nvim_set_hl(0, group, opts)
end



-------------------------------------------------
-- Standard Highlighting
-------------------------------------------------

hl('Comment',{ fg = colors.comment })                               -- any comment

hl('Constant',{ fg = colors.constant })                             -- any constant
hl('String',{ fg = colors.string })                                 -- a string constant: "this is a string"
hl('Character',{ fg = colors.constant })                            -- a character constant: 'c', '\n'
hl('Number',{ fg = colors.constant })                               -- a number constant: 234, 0xff
hl('Boolean',{ fg = colors.constant })                              -- a boolean constant: TRUE, false
hl('Float',{ fg = colors.constant })                                -- a floating point constant: 2.3e10

hl('Identifier',{ fg = colors.variable })                           -- any variable name
hl('Function',{ fg = colors.method })                               -- function name (also: methods for classes)

hl('Statement',{ fg = colors.keyword })                             -- any statement
hl('Conditional',{ fg = colors.keyword })                           -- if, then, else, endif, switch, etc.
hl('Repeat',{ fg = colors.keyword })                                -- for, do, while, etc.
hl('Label',{ fg = colors.keyword })                                 -- case, default, etc.
hl('Operator',{ fg = colors.keyword })                              -- "sizeof", "+", "*", etc.
hl('Keyword',{ fg = colors.keyword })                               -- any other keyword
hl('Exception',{ fg = colors.keyword })                             -- try, catch, throw

-- hl('PreProc',{  })                              -- generic Preprocessor
hl('Include',{ fg = colors.keyword })                               -- preprocessor #include
-- hl('Define',{  })                               -- preprocessor #define
-- hl('Macro',{  })                                -- same as Define
-- hl('PreCondit',{  })                            -- preprocessor #if, #else, #endif, etc.

-- hl('Type',{ fg = colors.colors })                                 -- int, long, char, etc.
-- hl('StorageClass',{  })   -- static, register, volatile, etc.
-- hl('Structure',{  })      -- struct, union, enum, etc.
-- hl('Typedef',{  })        -- A typedef

-- hl('Special',{ fg = colors.colors })                              -- any special symbol
-- hl('SpecialChar',{  })                          -- special character in a constant
hl('Tag',{ fg = theme.syntax.tag })             -- you can use CTRL-] on this
-- hl('Delimiter',{  })                            -- character that needs attention
-- hl('SpecialComment',{  })                       -- special things inside a comment
-- hl('Debug',{  })                                -- debugging statements

-- hl('Underlined',{  })                           -- text that stands out, HTML links

-- hl('Ignore',{  })                               -- left blank

-- hl('Error',{  })                                -- any erroneous construct

-- hl('Todo',{  })                                 -- anything that needs extra attention



-------------------------------------------------
-- Treesitter
-------------------------------------------------

hl('@text.literal', { link = 'Comment' })
hl('@text.reference',{ link = 'Identifier' })
-- hl('@text.title',{ link = 'Title' })
-- hl('@text.uri ',{ link = 'Underlined' })
-- hl('@text.underline',{ link = 'Underlined' })
-- hl('@text.todo',{ link = 'Todo' })

-- hl('@comment',{ link = 'Comment' })
-- hl('@punctuation',{ link = 'Delimiter' })

hl('@constant',{ link = 'Constant' })
-- hl('@constant.builtin',{ link = 'Special' })
-- hl('@constant.macro',{ link = 'Define' })
-- hl('@define',{ link = 'Define' })
-- hl('@macro',{ link = 'Macro' })
hl('@string',{ link = 'String' })
-- hl('@string.escape',{ link = 'SpecialChar' })
-- hl('@string.special',{ link = 'SpecialChar' })
hl('@character',{ link = 'Character' })
-- hl('@character.special',{ link = 'SpecialChar' })
hl('@number',{ link = 'Number' })
hl('@boolean',{ link = 'Boolean' })
hl('@float',{ link = 'Float' })

-- hl('@function',{ link = 'Function' })
-- hl('@function.builtin',{ link = 'Special' })
hl('@function.call', { fg = colors.colors })
-- hl('@function.macro',{ link = 'Macro' })

hl('@parameter',{ link = 'Identifier' })
hl('@method',{ link = 'Function' })
hl('@field',{ link = 'Identifier' })
hl('@property',{ link = 'Identifier' })
-- hl('@constructor',{ link = 'Special' })

hl('@conditional',{ link = 'Conditional' })
-- hl('@repeat',{ link = 'Repeat' })
-- hl('@label',{ link = 'Label' })
hl('@operator',{ link = 'Operator' })
hl('@keyword',{ link = 'Keyword' })
-- hl('@exception',{ link = 'Exception' })

hl('@variable',{ link = 'Identifier' })
hl('@type',{ link = 'Type' })
hl('@type.builtin', { fg = colors.colors })
-- hl('@type.definition',{ link = 'Typedef' })
-- hl('@storageclass',{ link = 'StorageClass' })
-- hl('@structure',{ link = 'Structure' })
hl('@namespace',{ link = 'Identifier' })
hl('@include',{ link = 'Include' })
-- hl('@preproc',{ link = 'PreProc' })
-- hl('@debug',{ link = 'Debug' })
hl('@tag',{ link = 'Tag' })

-- Lua
hl('@variable.lua', { fg = theme.fg.default })
hl('@field.lua', { fg = theme.syntax.entity })


-------------------------------------------------
-- NeoVim Highlighting
-------------------------------------------------

-- hl('ColorColumn', { })
-- hl('Conceal', { })
-- hl('CurSearch', { })
-- hl('Cursor', { })
-- hl('CursorIM', { })
-- hl('CursorColumn', {  })
hl('CursorLine', { bg = colors.cursor })

hl('Directory', { fg = colors.fg, bold = true })

hl('DiffAdd', { fg = colors.added })
hl('DiffChange', { fg = colors.modified })
hl('DiffDelete', { fg = colors.removed })
hl('DiffText', { fg = colors.renamed })

-- hl('EndOfBuffer', { fg = theme.canvas.default })

-- hl('TermCursor', { })
-- hl('TermCursorNC', { })
-- hl('ErrorMsg', {  })
-- hl('WinSeparator', { })
-- hl('Folded', { })
-- hl('FoldColumn', { })
hl('SignColumn', { bg = colors.bg })
-- hl('IncSearch', { })
-- hl('Substitute', { })

hl('LineNr', { fg = colors.comment })
-- hl('LineNrAbove', { })
-- hl('LineNrBelow', { })
hl('CursorLineNr', { fg = colors.fg })
-- hl('CursorLineSign', {  })
-- hl('CursorLineFold', { })
-- hl('MatchParen', { })
-- hl('ModeMsg', { })
-- hl('MsgArea', {  })
-- hl('MsgSeparator', { })
-- hl('MoreMsg', { })
hl('NonText', { fg = colors.bg })
hl('Normal', { fg = colors.fg, bg = colors.bg })
-- hl('NormalFloat', { })
-- hl('NormalNC', { })

hl('Pmenu', { fg = colors.fg, bg = colors.panel_bg })
hl('PmenuSel', { fg = colors.fg })
hl('PmenuSbar', { bg = colors.comment })
hl('PmenuThumb', { bg = colors.panel_bg })

-- hl('Question', { })
-- hl('QuickFixLine', { })
-- hl('Search', { })
-- hl('SpecialKey', { })

-- hl('SpellBad', { })
-- hl('SpellCap', { })
-- hl('SpellLocal', { })
-- hl('SpellRare', { })

hl('StatusLine', { fg = colors.status_fg, bg = colors.status_bg })
-- hl('StatusLineNC', { })
hl('VertSplit', { fg = colors.bg, bg = colors.bg })

hl('TabLine', { fg = colors.fg, bg = colors.bg })
hl('TabLineFill', { fg = colors.fg, bg = colors.bg })
hl('TabLineSel', { fg = colors.fg, bg = colors.sidebar_bg })

-- hl('Title', { })
-- hl('Visual', { })
-- hl('VisualNOS', { })
-- hl('WarningMsg', { })
-- hl('Whitespace', { })
-- hl('WildMenu', { })
-- hl('WinBar', { })
-- hl('WinBarNC', { })
-- hl('Menu', { })
-- hl('Scrollbar', { })
-- hl('Tooltip', { })



-------------------------------------------------
-- LSP
-------------------------------------------------

hl('DiagnosticLineNrError', { fg = colors.removed })
hl('DiagnosticLineNrWarn', { fg = colors.modified })
hl('DiagnosticLineNrInfo', { fg = colors.renamed })
hl('DiagnosticLineNrHint', { fg = colors.added })



-------------------------------------------------
-- dashboard
-------------------------------------------------

hl('DashboardHeader', { link = "Constant" })
-- hl('DashboardCenter', {  })
-- hl('DashboardShortCut', {  })
hl('DashboardFooter', { link = "Comment" })



-------------------------------------------------
-- NvimTree
-------------------------------------------------

hl('NvimTreeNormal', { fg = colors.sidebar_fg, bg = colors.sidebar_bg })
hl('NvimTreeEndOfBuffer', { fg = colors.sidebar_bg })



-------------------------------------------------
-- which key
-------------------------------------------------

hl('WhichKey', { fg = colors.fg })
hl('WhichKeyGroup', { fg = colors.comment })
hl('WhichKeySeparator', { fg = colors.comment })
hl('WhichKeyDesc', {})
hl('WhichKeyFloat', { fg = colors.fg, bg = colors.panel_bg })
hl('WhichKeyValue', { fg = colors.comment })



-------------------------------------------------
-- telescope
-------------------------------------------------

hl('TelescopeSelection', { bg = colors.cursor })
hl('TelescopeNormal', { bg = colors.panel_bg })
hl('TelescopeBorder', { fg = colors.panel_bg, bg = colors.bg })
hl('TelescopeTitle', { fg = colors.fg, bg = colors.panel_bg })
hl('TelescopePromptCounter', { fg = colors.comment })
hl('TelescopeMatching', { bg = colors.panel_bg })



-------------------------------------------------
-- statusline
-------------------------------------------------

hl('StatusLineMode', { bg = colors.status_bg })
hl('StatusLineGitBranch', { bg = colors.status_bg })
hl('StatusLineGitCommitAdded', { fg = colors.added, bg = colors.status_bg })
hl('StatusLineGitCommitChanged', { fg = colors.modified, bg = colors.status_bg })
hl('StatusLineGitCommitRemoved', { fg = colors.removed, bg = colors.status_bg })
hl('StatusLineDiagnosticError', { fg = colors.removed, bg = colors.status_bg })
hl('StatusLineDiagnosticWarning', { fg = colors.modified, bg = colors.status_bg })
hl('StatusLineLspProgress', { fg = colors.comment, bg = colors.status_bg })
hl('StatusLineFileType', { bg = colors.status_bg })
hl('StatusLineEncode', { bg = colors.status_bg })
