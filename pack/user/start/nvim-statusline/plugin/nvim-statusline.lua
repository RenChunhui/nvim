local fn = vim.fn
local api = vim.api
local cmd = vim.cmd

local M = {}

-- Highlight groups
M.colors = {
  mode = '%#StatusLineMode#',
  git_branch = '%#StatusLineGitBranch#',
  git_commit_added = '%#StatusLineGitCommitAdded#',
  git_commit_changed = '%#StatusLineGitCommitChanged#',
  git_commit_removed = '%#StatusLineGitCommitRemoved#',
  diagnostic_errors = '%#StatusLineDiagnosticError#',
  diagnostic_warnings = '%#StatusLineDiagnosticWarning#',
  diagnostic_infos = '%#StatusLineDiagnosticInfo#',
  lsp_progress = '%#StatusLineLspProgress#',
  filetype = '%#StatusLineFileType#',
  encode = '%#StatusLineEncode#',
}

M.mode = setmetatable({
  ['n'] = 'N',
  ['i'] = 'I',
  ['R'] = 'R',
  ['v'] = 'V',
  ['V'] = 'V·L',
  ['c'] = 'C',
  ['s'] = 'S',
  ['S'] = 'S·L',
  ['!'] = 'Shell',
  ['t'] = 'Terminal'
},{
  __index = function ()
    return 'U'
  end
})

-- Mode
M.statusline_mode = function(self)
  return string.format("▎%s ", self.mode[api.nvim_get_mode().mode])
end

-- Git branch
M.statusline_git_branch = function (self)
  local sign_head = vim.b.gitsigns_head
  local is_head_empty = sign_head ~= nil

  return is_head_empty and string.format("  %s ", sign_head) or ""
end

-- Git sings
M.statusline_git_commit_added = function(self)
  local sings = vim.b.gitsigns_status_dict or { added = 0, changed = 0, removed = 0 }

  return string.format("  %s", sings.added) or 0
end

M.statusline_git_commit_changed = function(self)
  local sings = vim.b.gitsigns_status_dict or { added = 0, changed = 0, removed = 0 }

  return string.format("  %s", sings.changed) or 0
end

M.statusline_git_commit_removed = function(self)
  local sings = vim.b.gitsigns_status_dict or { added = 0, changed = 0, removed = 0 }

  return string.format("  %s ", sings.removed) or 0
end

-- Lsp diagnostic errors
M.statusline_diagnostic_error = function ()
  local diagnostic_errors = vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })

  return string.format("  %s", diagnostic_errors.severity or 0)
end

-- Lsp diagnostic warnings
M.statusline_diagnostic_warning = function ()
  local diagnostic_warnings = vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })

  return string.format("  %s", diagnostic_warnings.severity or 0)
end

-- Lsp diagnostic infos
M.statusline_diagnostic_info = function ()
  local diagnostic_infos = vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  return string.format("  %s ", diagnostic_infos.severity or 0)
end


M.statusline_lsp_progress = function()
  local lsp = vim.lsp.util.get_progress_messages()[1]

  if lsp then
    local name = lsp.name or ""
    local msg = lsp.message or ""
    local percentage = lsp.percentage or 0
    local title = lsp.title or ""
    return string.format(
      " %%<%s: %s %s (%s%%%%) ",
      name,
      title,
      msg,
      percentage
    )
  end

  return ""
end

-- filetype
M.statusline_filetype = function ()
  local filename, extension = fn.expand("%:t"), fn.expand("%:e")

  -- if require'nvim-web-devicons'.has_loaded() then
  --   local icon, color = require'nvim-web-devicons'.get_icon_color(filename,extension)
  --   local is_nil = icon ~= nil

  --   if icon ~= nil and color ~= nil then
  --     vim.api.nvim_command("hi StatusLineFileType guifg=" .. color .. " guibg=#21252b")
  --   end

  --   return is_nil and string.format(" %s ",icon) or ""
  -- end

  return string.format(" %s ", extension):upper()
end

-- encode
M.statusline_encode = function()
  return string.format("%s", vim.bo.fileencoding):upper()
end



-----------------------------------------------------------
--
-----------------------------------------------------------

M.set_active = function (self)
  local colors = self.colors

  -- left
  local mode = colors.mode .. self:statusline_mode()
  local diagnostic_error = colors.diagnostic_errors .. self:statusline_diagnostic_error()
  local diagnostic_warning = colors.diagnostic_warnings .. self:statusline_diagnostic_warning()
  -- local diagnostic_info = colors.diagnostic_infos .. self:statusline_diagnostic_info()

  -- right
  local progress = colors.lsp_progress .. self:statusline_lsp_progress()
  local git_branch = colors.git_branch .. self:statusline_git_branch()
  local encode = colors.encode .. self:statusline_encode()
  local filetype = colors.filetype .. self:statusline_filetype()
  local git_commit_added = colors.git_commit_added .. self:statusline_git_commit_added()
  local git_commit_changed = colors.git_commit_changed .. self:statusline_git_commit_changed()
  local git_commit_removed = colors.git_commit_removed .. self:statusline_git_commit_removed()

  return table.concat({
    mode,
    diagnostic_error,
    diagnostic_warning,
    -- diagnostic_info,
    "%=",
    progress,
    encode,
    filetype,
    git_branch,
    git_commit_added,
    git_commit_changed,
    git_commit_removed
  })
end

M.set_inactive = function ()
  return "%#StatusLineNC#" .. "%= %F %="
end

M.set_explorer = function ()
  return "%#StatusLineNC#"
end

Statusline = setmetatable(M, {
  __call = function(self, mode)
    return self["set_" .. mode](self)
  end,
})

cmd [[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline('active')
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline('inactive')
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline('explorer')
  augroup END
]]
