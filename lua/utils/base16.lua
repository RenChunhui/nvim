local M = {}

local function blend(fg, bg, alpha)
  local function hex2rgb(hex)
    hex = hex:gsub("#", "")
    return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
  end

  local r1, g1, b1 = hex2rgb(fg)
  local r2, g2, b2 = hex2rgb(bg)

  local r = math.floor(r1 * alpha + r2 * (1 - alpha))
  local g = math.floor(g1 * alpha + g2 * (1 - alpha))
  local b = math.floor(b1 * alpha + b2 * (1 - alpha))

  return string.format("#%02x%02x%02x", r, g, b)
end

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(palette)
  local c = palette

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- ============================================================================
  -- Editor UI
  -- ============================================================================
  hl("Normal",           { fg = c.base05, bg = c.base00 })
  hl("Cursor",           { fg = c.base00, bg = c.base05 })
  hl("CursorLine",       { bg = c.base01 })
  hl("CursorColumn",     { bg = c.base01 })
  hl("ColorColumn",      { bg = c.base01 })
  hl("Visual",           { bg = c.base02 })
  hl("VisualNOS",        { bg = c.base02 })

  hl("LineNr",           { fg = c.base03 })
  hl("CursorLineNr",     { fg = c.base04 })
  hl("SignColumn",       { bg = c.base00 })

  hl("Search",           { fg = c.base00, bg = c.base0A })
  hl("IncSearch",        { fg = c.base01, bg = c.base09 })
  hl("CurSearch",        { link = "IncSearch" })

  hl("MatchParen",       { fg = c.base09, bold = true })

  hl("Pmenu",            { fg = c.base05, bg = c.base01 })
  hl("PmenuSel",         { fg = c.base00, bg = c.base0D })
  hl("PmenuSbar",        { bg = c.base02 })
  hl("PmenuThumb",       { bg = c.base04 })

  hl("StatusLine",       { fg = c.base04, bg = c.base01 })
  hl("StatusLineNC",     { fg = c.base03, bg = c.base01 })
  hl("TabLine",          { fg = c.base03, bg = c.base01 })
  hl("TabLineSel",       { fg = c.base00, bg = c.base0D })
  hl("TabLineFill",      { bg = c.base01 })

  hl("FloatBorder",      { fg = c.base04, bg = c.base00 })
  hl("NormalFloat",      { bg = c.base00 })
  hl("Title",            { fg = c.base0D, bold = true })

  hl("WinSeparator",     { fg = c.base02 })
  hl("Folded",           { fg = c.base03, bg = c.base01 })
  hl("FoldColumn",       { fg = c.base03, bg = c.base00 })
  hl("VertSplit",        { fg = c.base02, bg = c.base00 })

  hl("Conceal",          { fg = c.base04 })
  hl("Directory",        { fg = c.base0D })
  hl("EndOfBuffer",      { fg = c.base01 })
  hl("NonText",          { fg = c.base03 })
  hl("SpecialKey",       { fg = c.base03 })
  hl("Whitespace",       { fg = c.base03 })

  hl("ModeMsg",          { fg = c.base0B })
  hl("MsgArea",          { fg = c.base05 })
  hl("MoreMsg",          { fg = c.base0B })
  hl("Question",         { fg = c.base0D })
  hl("WarningMsg",       { fg = c.base09 })
  hl("ErrorMsg",         { fg = c.base08, bold = true })

  -- Syntax
  -- @see https://neovim.io/doc/user/syntax.html
  hl("Comment",          { fg = c.base03, italic = true })
  hl("Constant",         { fg = c.base09 })
  hl("String",           { fg = c.base0B })
  hl("Character",        { fg = c.base0B })
  hl("Number",           { fg = c.base09 })
  hl("Boolean",          { fg = c.base09 })
  hl("Float",            { fg = c.base09 })

  hl("Identifier",       { fg = c.base08 })
  hl("Function",         { fg = c.base0D })

  hl("Statement",        { fg = c.base0E })
  hl("Conditional",      { fg = c.base0E })
  hl("Repeat",           { fg = c.base0E })
  hl("Label",            { fg = c.base0E })
  hl("Operator",         { fg = c.base05 })
  hl("Keyword",          { fg = c.base0E })
  hl("Exception",        { fg = c.base0E })

  hl("PreProc",          { fg = c.base0A })
  hl("Include",          { fg = c.base0D })
  hl("Define",           { fg = c.base0A })
  hl("Macro",            { fg = c.base08 })
  hl("PreCondit",        { fg = c.base0A })

  hl("Type",             { fg = c.base0A })
  hl("StorageClass",     { fg = c.base0E })
  hl("Structure",        { fg = c.base0A })
  hl("Typedef",          { fg = c.base0A })

  hl("Special",          { fg = c.base0C })
  hl("SpecialChar",      { fg = c.base0C })
  hl("Tag",              { fg = c.base08 })
  hl("Delimiter",        { fg = c.base05 })
  hl("SpecialComment",   { fg = c.base03 })
  hl("Debug",            { fg = c.base08 })

  hl("Underlined",       { fg = c.base0D, underline = true })
  hl("Ignore",           {})
  hl("Error",            { fg = c.base08, bg = c.base00 })
  hl("Todo",             { fg = c.base0A, bg = c.base01 })

  -- ============================================================================
  -- @see https://neovim.io/doc/user/treesitter/#treesitter-highlight-groups
  -- ============================================================================
  hl("@comment",         { link = "Comment" })
  hl("@error",           { fg = c.base08 })
  hl("@none",            {})

  hl("@preproc",         { fg = c.base0A })
  hl("@define",          { fg = c.base0A })
  hl("@operator",        { fg = c.base05 })

  hl("@punctuation.delimiter", { fg = c.base05 })
  hl("@punctuation.bracket",   { fg = c.base05 })
  hl("@punctuation.special",   { fg = c.base0C })

  hl("@string",                { fg = c.base0B })
  hl("@string.regex",          { fg = c.base0C })
  hl("@string.escape",         { fg = c.base0C })
  hl("@string.special",        { fg = c.base0C })

  hl("@character",             { fg = c.base0B })
  hl("@character.special",     { fg = c.base0C })

  hl("@boolean",               { fg = c.base09 })
  hl("@number",                { fg = c.base09 })
  hl("@float",                 { fg = c.base09 })

  hl("@function",              { fg = c.base0D })
  hl("@function.builtin",      { fg = c.base08 })
  hl("@function.macro",        { fg = c.base08 })
  hl("@function.call",         { fg = c.base0D })

  hl("@parameter",             { fg = c.base08 })
  hl("@parameter.reference",   { fg = c.base08 })

  hl("@method",                { fg = c.base0D })
  hl("@method.call",           { fg = c.base0D })

  hl("@field",                 { fg = c.base08 })
  hl("@property",              { fg = c.base08 })

  hl("@constructor",           { fg = c.base0A })

  hl("@conditional",           { fg = c.base0E })
  hl("@repeat",                { fg = c.base0E })
  hl("@label",                 { fg = c.base0E })
  hl("@exception",             { fg = c.base0E })

  hl("@keyword",               { fg = c.base0E })
  hl("@keyword.function",      { fg = c.base0E })
  hl("@keyword.operator",      { fg = c.base05 })
  hl("@keyword.return",        { fg = c.base0E })

  hl("@variable",              { fg = c.base08 })
  hl("@variable.builtin",      { fg = c.base08 })

  hl("@type",                  { fg = c.base0A })
  hl("@type.builtin",          { fg = c.base0A })
  hl("@type.definition",       { fg = c.base0A })
  hl("@type.qualifier",        { fg = c.base0E })

  hl("@storageclass",          { fg = c.base0E })
  hl("@attribute",             { fg = c.base0A })
  hl("@include",               { fg = c.base0D })

  hl("@tag",                   { fg = c.base08 })
  hl("@tag.attribute",         { fg = c.base09 })
  hl("@tag.delimiter",         { fg = c.base04 })

  hl("@text",                  { fg = c.base05 })
  hl("@text.strong",           { bold = true })
  hl("@text.emphasis",         { italic = true })
  hl("@text.underline",        { underline = true })
  hl("@text.strike",           { strikethrough = true })
  hl("@text.title",            { fg = c.base0D, bold = true })
  hl("@text.literal",          { fg = c.base0B })
  hl("@text.uri",              { fg = c.base0C, underline = true })
  hl("@text.math",             { fg = c.base0C })
  hl("@text.environment",      { fg = c.base0E })
  hl("@text.environment.name", { fg = c.base0E })
  hl("@text.note",             { fg = c.base0B, bold = true })
  hl("@text.warning",          { fg = c.base09, bold = true })
  hl("@text.danger",           { fg = c.base08, bold = true })
  hl("@text.diff.add",         { fg = c.base0B })
  hl("@text.diff.delete",      { fg = c.base08 })

  -- ============================================================================
  -- LSP / Diagnostic
  -- ============================================================================
  hl("DiagnosticError",        { fg = c.base08 })
  hl("DiagnosticWarn",         { fg = c.base09 })
  hl("DiagnosticInfo",         { fg = c.base0D })
  hl("DiagnosticHint",         { fg = c.base0C })
  hl("DiagnosticOk",           { fg = c.base0B })

  hl("DiagnosticVirtualTextError", { fg = c.base08 })
  hl("DiagnosticVirtualTextWarn",  { fg = c.base09 })
  hl("DiagnosticVirtualTextInfo",  { fg = c.base0D })
  hl("DiagnosticVirtualTextHint",  { fg = c.base0C })

  hl("DiagnosticUnderlineError", { sp = c.base08, undercurl = true })
  hl("DiagnosticUnderlineWarn",  { sp = c.base09, undercurl = true })
  hl("DiagnosticUnderlineInfo",  { sp = c.base0D, undercurl = true })
  hl("DiagnosticUnderlineHint",  { sp = c.base0C, undercurl = true })

  hl("DiagnosticFloatingError",  { fg = c.base08 })
  hl("DiagnosticFloatingWarn",   { fg = c.base09 })
  hl("DiagnosticFloatingInfo",   { fg = c.base0D })
  hl("DiagnosticFloatingHint",   { fg = c.base0C })

  hl("DiagnosticSignError", { fg = c.base08, bg = c.base00 })
  hl("DiagnosticSignWarn",  { fg = c.base09, bg = c.base00 })
  hl("DiagnosticSignInfo",  { fg = c.base0D, bg = c.base00 })
  hl("DiagnosticSignHint",  { fg = c.base0C, bg = c.base00 })

  hl("LspReferenceText",  { bg = c.base02 })
  hl("LspReferenceRead",  { bg = c.base02 })
  hl("LspReferenceWrite", { bg = c.base02 })
  hl("LspInlayHint",      { fg = c.base04, bg = c.base01 })

  -- ============================================================================
  -- Diff
  -- ============================================================================
  local dim_alpha = 0.25

  hl("DiffAdd",    { bg = blend(c.base0B, c.base00, dim_alpha) })
  hl("DiffChange", { bg = blend(c.base0E, c.base00, dim_alpha) })
  hl("DiffDelete", { bg = blend(c.base08, c.base00, dim_alpha) })
  hl("DiffText",   { bg = blend(c.base0D, c.base00, dim_alpha) })

  -- ============================================================================
  -- Git
  -- ============================================================================
  hl("GitSignsAdd",    { fg = c.base0B })
  hl("GitSignsChange", { fg = c.base0E })
  hl("GitSignsDelete", { fg = c.base08 })

  -- ============================================================================
  -- Spelling
  -- ============================================================================
  hl("SpellBad",   { sp = c.base08, undercurl = true })
  hl("SpellCap",   { sp = c.base09, undercurl = true })
  hl("SpellLocal", { sp = c.base0C, undercurl = true })
  hl("SpellRare",  { sp = c.base0A, undercurl = true })
end

return M
