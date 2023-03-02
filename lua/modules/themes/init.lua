local M = {}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(opts)
  local color = opts[vim.o.background]

  -------------------------------------------------
  -- Standard Highlighting
  -- @see https://neovim.io/doc/user/syntax.html
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

  hl('Statement', { fg = color.statement })
  hl('Conditional', { link = 'Statement' })
  hl('Repeat', { link = 'Statement' })
  hl('Label', { link = 'Statement' })
  hl('Operator', { link = 'Statement' })
  hl('Keyword', { link = 'Statement' })
  hl('Exception', { link = 'Statement' })

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
  hl('ErrorMsg', { fg = color.removed })
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

  hl('Pmenu', { fg = color.comment, bg = color.bg_overlay })
  hl('PmenuSel', { fg = color.fg_overlay })
  hl('PmenuSbar', { bg = color.bg_overlay })
  hl('PmenuThumb', { bg = color.fg })

  -- hl('Question', {})
  -- hl('QuickFixLine', {})
  -- hl('Search', {})
  -- hl('SpecialKey', {})

  -- hl('SpellBad', {})
  -- hl('SpellCap', {})
  -- hl('SpellLocal', {})
  -- hl('SpellRare', {})

  hl('StatusLine', { fg = color.fg_inset, bg = color.bg_inset })
  hl('StatusLineNC', { bg = color.bg_inset })
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
  -- statusline
  -------------------------------------------------

  hl('StatusLineMode', { fg = color.highlight, bg = color.bg_inset })
  hl('StatusLineGitBranch', { bg = color.bg_inset })
  hl('StatusLineGitCommitAdded', { fg = color.added, bg = color.bg_inset })
  hl('StatusLineGitCommitChanged', { fg = color.modified, bg = color.bg_inset })
  hl('StatusLineGitCommitRemoved', { fg = color.removed, bg = color.bg_inset })
  hl('StatusLineDiagnosticError', { fg = color.removed, bg = color.bg_inset })
  hl('StatusLineDiagnosticWarning', { fg = color.modified, bg = color.bg_inset })
  hl('StatusLineLspProgress', { fg = color.comment, bg = color.bg_inset })
  hl('StatusLineFileType', { bg = color.bg_inset })
  hl('StatusLineEncode', { bg = color.bg_inset })



  -------------------------------------------------
  -- NvimTree
  -------------------------------------------------
  hl('NvimTreeNormal', { fg = color.fg_inset, bg = color.bg_inset })
  -- hl('NvimTreeFileDirty',{})
  -- hl('NvimTreeFileStaged',{})
  -- hl('NvimTreeFileMerge',{})
  hl('NvimTreeFileRenamed', { fg = color.renamed })
  hl('NvimTreeFileNew', { fg = color.added })
  hl('NvimTreeFileDeleted', { fg = color.removed })
  hl('NvimTreeFileIgnored', { fg = color.comment })



  -------------------------------------------------
  -- NvimTree
  -------------------------------------------------

  hl('BufferLineFill', { bg = color.bg_inset })
  hl('BufferLineBackground', { fg = color.comment, bg = color.bg_inset })
  hl('BufferLineTabSelected', { fg = color.fg, bg = color.bg, bold = true })

  -------------------------------------------------
  -- which key
  -------------------------------------------------

  hl('WhichKey', { fg = color.fg })
  hl('WhichKeyGroup', { fg = color.comment })
  hl('WhichKeySeparator', { fg = color.comment })
  hl('WhichKeyDesc', {})
  hl('WhichKeyFloat', { fg = color.fg, bg = color.bg_overlay })
  hl('WhichKeyValue', { fg = color.comment })



  -------------------------------------------------
  -- telescope
  -------------------------------------------------

  hl('TelescopeNormal', { fg = color.fg_overlay, bg = color.bg_overlay })
  hl('TelescopeBorder', { fg = color.border, bg = color.bg_overlay })
  hl('TelescopeSelection', { bg = color.border })
  hl('TelescopePromptPrefix', { fg = color.highlight })
end

return M
