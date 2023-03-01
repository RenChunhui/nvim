local M = {}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(opts)
  local color = opts[vim.o.background]

  -------------------------------------------------
  -- Standard Highlighting
  -------------------------------------------------

  hl('Comment', { fg = color.comment })

  hl('Constant', { fg = color.constant })
  hl('String', { fg = color.string })
  hl('Character', { link = 'Constant' })
  hl('Number', { fg = color.constant })
  hl('Boolean', { link = 'Constant' })
  hl('Float', { fg = color.constant })

  hl('Identifier', { fg = color.variable })
  hl('Function', { fg = color.method })

  hl('Statement', { fg = color.keyword })
  hl('Conditional', { link = 'Statement' })
  hl('Repeat', { fg = color.keyword })
  hl('Label', { fg = color.keyword })
  hl('Operator', { fg = color.keyword })
  hl('Keyword', { fg = color.keyword })
  hl('Exception', { fg = color.keyword })

  -- hl('PreProc', {})
  -- hl('Include', {})
  -- hl('Define', {})
  -- hl('Macro', {})
  -- hl('PreCondit', {})

  -- hl('Type', {})
  -- hl('StorageClass', {})
  -- hl('Structure', {})
  -- hl('Typedef', {})

  -- hl('Special', {})
  -- hl('SpecialChar', {})
  -- hl('Tag', {})
  -- hl('Delimiter', {})
  -- hl('SpecialComment', {})
  -- hl('Debug', {})

  -- hl('Underlined', {})

  -- hl('Ignore', {})

  -- hl('Error', {})

  -- hl('Todo', {})



  -------------------------------------------------
  -- Treesitter
  -------------------------------------------------

  hl('@text.literal', { link = 'Comment' })
  hl('@text.reference', { link = 'Identifier' })
  -- hl('@text.title', { link = 'Title' })
  -- hl('@text.uri ', { link = 'Underlined' })
  -- hl('@text.underline', { link = 'Underlined' })
  -- hl('@text.todo', { link = 'Todo' })

  -- hl('@comment', { link = 'Comment' })
  -- hl('@punctuation', { link = 'Delimiter' })

  -- hl('@constant', { link = 'Constant' })
  -- hl('@constant.builtin', { link = 'Special' })
  -- hl('@constant.macro', { link = 'Define' })
  -- hl('@define', { link = 'Define' })
  -- hl('@macro', { link = 'Macro' })
  -- hl('@string', { link = 'String' })
  -- hl('@string.escape', { link = 'SpecialChar' })
  -- hl('@string.special', { link = 'SpecialChar' })
  -- hl('@character', { link = 'Character' })
  -- hl('@character.special', { link = 'SpecialChar' })
  -- hl('@number', { link = 'Number' })
  -- hl('@boolean', { link = 'Boolean' })
  -- hl('@float', { link = 'Float' })

  -- hl('@function', { link = 'Function' })
  -- hl('@function.builtin', { link = 'Special' })
  -- hl('@function.call', {})
  -- hl('@function.macro', { link = 'Macro' })

  -- hl('@parameter', { link = 'Identifier' })
  -- hl('@method', { link = 'Function' })
  -- hl('@field', { link = 'Identifier' })
  -- hl('@property', { link = 'Identifier' })
  -- hl('@constructor', { link = 'Special' })

  -- hl('@conditional', { link = 'Conditional' })
  -- hl('@repeat', { link = 'Repeat' })
  -- hl('@label', { link = 'Label' })
  -- hl('@operator', { link = 'Operator' })
  -- hl('@keyword', { link = 'Keyword' })
  -- hl('@exception', { link = 'Exception' })

  -- hl('@variable', { link = 'Identifier' })
  -- hl('@type', { link = 'Type' })
  -- hl('@type.builtin', {})
  -- hl('@type.definition', { link = 'Typedef' })
  -- hl('@storageclass', { link = 'StorageClass' })
  -- hl('@structure', { link = 'Structure' })
  -- hl('@namespace', { link = 'Identifier' })
  -- hl('@include', { link = 'Include' })
  -- hl('@preproc', { link = 'PreProc' })
  -- hl('@debug', { link = 'Debug' })
  -- hl('@tag', { link = 'Tag' })



  -------------------------------------------------
  -- NeoVim Highlighting
  -------------------------------------------------

  -- hl('ColorColumn', {})
  -- hl('Conceal', {})
  -- hl('CurSearch', {})
  -- hl('Cursor', { })
  -- hl('CursorIM', {})
  -- hl('CursorColumn', {})
  hl('CursorLine', { bg = color.cursor })

  hl('Directory', { bold = true })

  hl('DiffAdd', { fg = color.added })
  hl('DiffChange', { fg = color.modified })
  hl('DiffDelete', { fg = color.removed })
  hl('DiffText', { fg = color.renamed })

  -- hl('EndOfBuffer', {})

  -- hl('TermCursor', {})
  -- hl('TermCursorNC', {})
  -- hl('ErrorMsg', {})
  -- hl('WinSeparator', {})
  -- hl('Folded', {})
  -- hl('FoldColumn', {})
  hl('SignColumn', { bg = color.bg })
  -- hl('IncSearch', {})
  -- hl('Substitute', {})

  hl('LineNr', { fg = color.comment })
  hl('LineNrAbove', { link = 'LineNr' })
  hl('LineNrBelow', { link = 'LineNr' })
  hl('CursorLineNr', { fg = color.fg })
  hl('CursorLineSign', { link = 'CursorLine' })
  hl('CursorLineFold', { link = 'CursorLine' })
  -- hl('MatchParen', {})
  -- hl('ModeMsg', {})
  -- hl('MsgArea', {})
  -- hl('MsgSeparator', {})
  -- hl('MoreMsg', {})
  hl('NonText', { fg = color.bg })
  hl('Normal', { fg = color.fg, bg = color.bg })
  -- hl('NormalFloat', {})
  -- hl('NormalNC', {})

  hl('Pmenu', { fg = color.fg_overlay, bg = color.bg_overlay })
  hl('PmenuSel', { fg = color.fg })
  hl('PmenuSbar', { fg = color.comment })
  hl('PmenuThumb', { bg = color.bg_overlay })

  -- hl('Question', {})
  -- hl('QuickFixLine', {})
  -- hl('Search', {})
  -- hl('SpecialKey', {})

  -- hl('SpellBad', {})
  -- hl('SpellCap', {})
  -- hl('SpellLocal', {})
  -- hl('SpellRare', {})

  -- hl('StatusLine', {})
  -- hl('StatusLineNC', {})
  hl('VertSplit', { fg = color.bg, bg = color.bg })

  -- hl('TabLine', {})
  -- hl('TabLineFill', {})
  -- hl('TabLineSel', {})

  -- hl('Title', {})
  -- hl('Visual', {})
  -- hl('VisualNOS', {})
  -- hl('WarningMsg', {})
  -- hl('Whitespace', {})
  -- hl('WildMenu', {})
  -- hl('WinBar', {})
  -- hl('WinBarNC', {})
  -- hl('Menu', {})
  -- hl('Scrollbar', {})
  -- hl('Tooltip', {})



  -------------------------------------------------
  -- LSP
  -------------------------------------------------

  hl('DiagnosticLineNrError', { fg = color.removed })
  hl('DiagnosticLineNrWarn', { fg = color.modified })
  hl('DiagnosticLineNrInfo', { fg = color.renamed })
  hl('DiagnosticLineNrHint', { fg = color.added })



  -------------------------------------------------
  -- NvimTree
  -------------------------------------------------
  hl('NvimTreeNormal', { fg = color.fg_inset, bg = color.bg_inset })
  hl('NvimTreeEndOfBuffer', { fg = color.bg_inset })

  -------------------------------------------------
  -- which key
  -------------------------------------------------

  hl('WhichKey', { fg = color.fg })
  hl('WhichKeyGroup', { fg = color.comment })
  hl('WhichKeySeparator', { fg = color.comment })
  hl('WhichKeyDesc', {})
  hl('WhichKeyFloat', { fg = color.fg, bg = color.bg_overlay })
  hl('WhichKeyValue', { fg = color.comment })
end

return M
