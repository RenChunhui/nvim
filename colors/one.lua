vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'one'

local api = vim.api
local theme = {
  fg0       = '#abb2bf',
  bg0       = '#282c34',
  fg1       = '#9da5b4',
  bg1       = '#21252b',
  cursor    = '#2B323D',
  comment   = '#5c6370',
  constant  = '#d19a66',
  string    = '#98c379',
  character = '#98c379',
  variable  = '#e06c75',
  func      = '#61afef',
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


-- Editor
api.nvim_set_hl(0, 'Normal', { fg = theme.fg0, bg = theme.bg0 })
api.nvim_set_hl(0, 'EndOfBuffer', { fg = theme.bg0 })
api.nvim_set_hl(0, 'StatusLine', { fg = theme.bg1, bg = theme.fg1 })
api.nvim_set_hl(0, 'VertSplit', { fg = theme.bg0, bg = theme.bg1 })
api.nvim_set_hl(0, 'SignColumn', { bg = theme.bg0 })
api.nvim_set_hl(0, "Pmenu", { fg = theme.fg0, bg = theme.pmenu })
api.nvim_set_hl(0, "PmenuSel", { fg = theme.fg0, bg = theme.wildmenu })
api.nvim_set_hl(0, "PmenuSbar", { bg = theme.comment })
api.nvim_set_hl(0, "PmenuThumb", { bg = theme.pmenu })
api.nvim_set_hl(0, 'TabLine', { fg = theme.fg0, bg = theme.bg1 })
api.nvim_set_hl(0, 'TabLineFill', { bg = theme.bg1 })
api.nvim_set_hl(0, 'TabLineSel', { fg = theme.fg0, bg = theme.bg0 })
api.nvim_set_hl(0, 'NonText', { fg = theme.bg0 })
api.nvim_set_hl(0, "SpecialKey", { fg = theme.bg0 })
api.nvim_set_hl(0, 'LineNr', { fg = theme.comment })
api.nvim_set_hl(0, 'CursorLine', { bg = theme.cursor })
api.nvim_set_hl(0, 'CursorLineNr', { fg = theme.fg0 })
api.nvim_set_hl(0, 'Directory', { fg = theme.fg0 })

-- Diff
api.nvim_set_hl(0, 'DiffAdd', { fg = theme.added })
api.nvim_set_hl(0, 'DiffChange', { fg = theme.modified })
api.nvim_set_hl(0, 'DiffDelete', { fg = theme.removed })
api.nvim_set_hl(0, 'DiffText', { fg = theme.renamed })

-- Syntax highlight
api.nvim_set_hl(0, 'Comment', { fg = theme.comment })
api.nvim_set_hl(0, 'Constant', { fg = theme.constant })
api.nvim_set_hl(0, 'Identifier', { fg = theme.variable })
api.nvim_set_hl(0, 'Function', { fg = theme.func })
api.nvim_set_hl(0, 'Statement', { fg = theme.statement })

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
api.nvim_set_hl(0, 'TSComment', { fg = theme.comment })
api.nvim_set_hl(0, 'TSConditional', { fg = theme.statement })
api.nvim_set_hl(0, 'TSConstant', { fg = theme.constant })
api.nvim_set_hl(0, 'TSConstBuiltin', {})
api.nvim_set_hl(0, 'TSConstMacro', {})
api.nvim_set_hl(0, 'TSConstructor', { fg = theme.type })
api.nvim_set_hl(0, 'TSError', { fg = theme.removed })
api.nvim_set_hl(0, 'TSException', { fg = theme.statement })
api.nvim_set_hl(0, 'TSField', {})
api.nvim_set_hl(0, 'TSFloat', { fg = theme.constant })
api.nvim_set_hl(0, 'TSFunction', { fg = theme.func })
api.nvim_set_hl(0, 'TSFuncBuiltin', {})
api.nvim_set_hl(0, 'TSFuncMacro', {})
api.nvim_set_hl(0, 'TSInclude', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeyword', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeywordFunction', { fg = theme.statement })
api.nvim_set_hl(0, 'TSKeywordOperator', { fg = theme.statement })
api.nvim_set_hl(0, 'TSLabel', {})
api.nvim_set_hl(0, 'TSMethod', {})
api.nvim_set_hl(0, 'TSNamespace', {fg=theme.statement})
api.nvim_set_hl(0, 'TSNone', {})
api.nvim_set_hl(0, 'TSNumber', {fg=theme.constant})
api.nvim_set_hl(0, 'TSOperator', {fg=theme.type})
api.nvim_set_hl(0, 'TSParameter', {fg=theme.fg0})
api.nvim_set_hl(0, 'TSParameterReference', {})
api.nvim_set_hl(0, 'TSProperty', {})
api.nvim_set_hl(0, 'TSPunctDelimiter', {})
api.nvim_set_hl(0, 'TSPunctBracket', {fg=theme.fg0})
api.nvim_set_hl(0, 'TSPunctSpecial', {})
api.nvim_set_hl(0, 'TSRepeat', {fg=theme.statement})
api.nvim_set_hl(0, 'TSString', {fg=theme.string})
api.nvim_set_hl(0, 'TSStringRegex', {})
api.nvim_set_hl(0, 'TSStringEscape', {})
api.nvim_set_hl(0, 'TSSymbol', {})
api.nvim_set_hl(0, 'TSTag', {fg=theme.tag})
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
api.nvim_set_hl(0, 'TSType', {fg=theme.type})
api.nvim_set_hl(0, 'TSTypeBuiltin', {fg=theme.type})
api.nvim_set_hl(0, 'TSVariable', {fg=theme.variable})
api.nvim_set_hl(0, 'TSVariableBuiltin', {fg=theme.statement})
api.nvim_set_hl(0, 'IndentBlanklineChar', {fg=theme.comment})

