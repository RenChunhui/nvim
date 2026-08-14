local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
  { src = gh('nvim-mini/mini.misc'), version = 'stable' },
})

-- vim.schedule(function()
--   vim.pack.add({
--     gh('nvim-mini/mini.starter'),
--     gh('nvim-mini/mini.statusline'),
--   })
-- end)

local MiniMisc = require('mini.misc')
MiniMisc.setup()

MiniMisc.safely('now', function()
  vim.pack.add({
    { src = gh('nvim-mini/mini.starter'), version = 'stable' },
    { src = gh('nvim-mini/mini.statusline'), version = 'stable' }
    })

  require('plugins.starter')
  require('plugins.statusline')
end)

MiniMisc.safely('event:InsertEnter', function ()
  vim.pack.add(gh('saghen/blink.cmp'))

  require('plugins.blink')
end)
