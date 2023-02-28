local M = {}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(opts)
  -------------------------------------------------
  -- Standard Highlighting
  -------------------------------------------------

  hl('Comment', { fg = opts.comment })

  hl('Constant', { fg = opts.constant })
  hl('String', { fg = opts.string })
  hl('Character', { fg = opts.variable })
  hl('Number', { fg = opts.constant })
  hl('Boolean', { fg = opts.constant })
  hl('Float', { fg = opts.constant })

  hl('Identifier', { fg = opts.variable })
  hl('Function', { fg = opts.method })

  hl('Statement', { fg = opts.variable })
  hl('Conditional', { fg = opts.keyword })
  hl('Repeat', { fg = opts.base0A })
  hl('Label', { fg = opts.base0A })
  hl('Operator', { fg = opts.fg })
  hl('Keyword', { fg = opts.keyword })
  hl('Exception', { fg = opts.variable })

  hl('PreProc', { fg = opts.base0A })
  hl('Include', { fg = opts.method })
  hl('Define', { fg = opts.keyword })
  hl('Macro', { fg = opts.variable })
  hl('PreCondit', {})

  hl('Type', { fg = opts.base0A })
  hl('StorageClass', { fg = opts.base0A })
  hl('Structure', { fg = opts.keyword })
  hl('Typedef', { fg = opts.base0A })

  hl('Special', { fg = opts.base0C })
  hl('SpecialChar', { fg = opts.base0F })
  hl('Tag', { fg = opts.base0A })
  hl('Delimiter', { fg = opts.base0F })
  hl('SpecialComment', {})
  hl('Debug', { fg = opts.variable })

  hl('Underlined', { fg = opts.variable })

  hl('Ignore', {})

  hl('Error', { fg = opts.bg, bg = opts.variable })

  hl('Todo', { fg = opts.base0A, bg = opts.base01 })



  -------------------------------------------------
  -- Treesitter
  -------------------------------------------------

  hl('@text.literal', { link = 'Comment' })
  hl('@text.reference', { link = 'Identifier' })
  hl('@text.title', { link = 'Title' })
  hl('@text.uri ', { link = 'Underlined' })
  hl('@text.underline', { link = 'Underlined' })
  hl('@text.todo', { link = 'Todo' })

  hl('@comment', { link = 'Comment' })
  hl('@punctuation', { link = 'Delimiter' })

  hl('@constant', { link = 'Constant' })
  hl('@constant.builtin', { link = 'Special' })
  hl('@constant.macro', { link = 'Define' })
  hl('@define', { link = 'Define' })
  hl('@macro', { link = 'Macro' })
  hl('@string', { link = 'String' })
  hl('@string.escape', { link = 'SpecialChar' })
  hl('@string.special', { link = 'SpecialChar' })
  hl('@character', { link = 'Character' })
  hl('@character.special', { link = 'SpecialChar' })
  hl('@number', { link = 'Number' })
  hl('@boolean', { link = 'Boolean' })
  hl('@float', { link = 'Float' })

  hl('@function', { link = 'Function' })
  hl('@function.builtin', { link = 'Special' })
  hl('@function.call', {})
  hl('@function.macro', { link = 'Macro' })

  hl('@parameter', { link = 'Identifier' })
  hl('@method', { link = 'Function' })
  hl('@field', { link = 'Identifier' })
  hl('@property', { link = 'Identifier' })
  hl('@constructor', { link = 'Special' })

  hl('@conditional', { link = 'Conditional' })
  hl('@repeat', { link = 'Repeat' })
  hl('@label', { link = 'Label' })
  hl('@operator', { link = 'Operator' })
  hl('@keyword', { link = 'Keyword' })
  hl('@exception', { link = 'Exception' })

  hl('@variable', { link = 'Identifier' })
  hl('@type', { link = 'Type' })
  hl('@type.builtin', {})
  hl('@type.definition', { link = 'Typedef' })
  hl('@storageclass', { link = 'StorageClass' })
  hl('@structure', { link = 'Structure' })
  hl('@namespace', { link = 'Identifier' })
  hl('@include', { link = 'Include' })
  hl('@preproc', { link = 'PreProc' })
  hl('@debug', { link = 'Debug' })
  hl('@tag', { link = 'Tag' })



  -------------------------------------------------
  -- NeoVim Highlighting
  -------------------------------------------------

  hl('ColorColumn', { bg = opts.base01 })
  hl('Conceal', { fg = opts.method, bg = opts.bg })
  hl('CurSearch', {})
  hl('Cursor', { fg = opts.bg, bg = opts.fg })
  hl('CursorIM', {})
  hl('CursorColumn', { bg = opts.base01 })
  hl('CursorLine', { bg = opts.base01 })

  hl('Directory', { fg = opts.method })

  hl('DiffAdd', { fg = opts.string, bg = opts.base01 })
  hl('DiffChange', { fg = opts.comment, bg = opts.base01 })
  hl('DiffDelete', { fg = opts.variable, bg = opts.base01 })
  hl('DiffText', { fg = opts.method, bg = opts.base01 })

  hl('EndOfBuffer', {})

  hl('TermCursor', {})
  hl('TermCursorNC', {})
  hl('ErrorMsg', {})
  hl('WinSeparator', {})
  hl('Folded', {})
  hl('FoldColumn', {})
  hl('SignColumn', {})
  hl('IncSearch', {})
  hl('Substitute', {})

  hl('LineNr', { fg = opts.comment, bg = opts.base01 })
  hl('LineNrAbove', {})
  hl('LineNrBelow', {})
  hl('CursorLineNr', {})
  hl('CursorLineSign', {})
  hl('CursorLineFold', {})
  hl('MatchParen', {})
  hl('ModeMsg', {})
  hl('MsgArea', {})
  hl('MsgSeparator', {})
  hl('MoreMsg', {})
  hl('NonText', { fg = opts.comment })
  hl('Normal', { fg = opts.fg, bg = opts.bg })
  hl('NormalFloat', {})
  hl('NormalNC', {})

  hl('Pmenu', { fg = opts.fg, bg = opts.base01 })
  hl('PmenuSel', { fg = opts.base01, bg = opts.fg })
  hl('PmenuSbar', {})
  hl('PmenuThumb', {})

  hl('Question', {})
  hl('QuickFixLine', {})
  hl('Search', {})
  hl('SpecialKey', {})

  hl('SpellBad', {})
  hl('SpellCap', {})
  hl('SpellLocal', {})
  hl('SpellRare', {})

  hl('StatusLine', { fg = opts.base04, bg = opts.base02 })
  hl('StatusLineNC', { fg = opts.comment, bg = opts.base01 })
  hl('VertSplit', { fg = opts.base02, bg = opts.base02 })

  hl('TabLine', {})
  hl('TabLineFill', {})
  hl('TabLineSel', {})

  hl('Title', {})
  hl('Visual', {})
  hl('VisualNOS', {})
  hl('WarningMsg', {})
  hl('Whitespace', {})
  hl('WildMenu', {})
  hl('WinBar', {})
  hl('WinBarNC', {})
  hl('Menu', {})
  hl('Scrollbar', {})
  hl('Tooltip', {})



  -------------------------------------------------
  -- LSP
  -------------------------------------------------

  hl('DiagnosticLineNrError', {})
  hl('DiagnosticLineNrWarn', {})
  hl('DiagnosticLineNrInfo', {})
  hl('DiagnosticLineNrHint', {})
end

return M
