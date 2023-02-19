local M = {}

local defaults = {
  icons = {
    diagnostics = {
      Error = " ",
      Warn = " ",
      Hint = " ",
      Info = " "
    },
    git = {},
    kinds = {}
  }
}

function M.setup(opts)
  require("core.options")
end

setmetatable(M, {
  __index = function(_, key)
    if options == nil then
      return vim.deepcopy(defaults)[key]
    end

    return options[key]
  end,
})

return M
