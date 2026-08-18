local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
  { src = gh('nvim-lua/plenary.nvim') },
  { src = gh('nvim-mini/mini.icons'), version = 'stable' },
  { src = gh('nvim-mini/mini.starter'), version = 'stable' },
  { src = gh('nvim-orgmode/orgmode') },
  { src = gh('nvim-telescope/telescope.nvim') }
}, { confirm = false })

require('plugins.starter')

vim.api.nvim_create_autocmd('InsertEnter', {
  once = true,
  callback = function()
    require('plugins.blink')
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'org',
  once = true,
  callback = function()
    require('plugins.orgmode')
  end,
})
