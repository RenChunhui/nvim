vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'javascript', 'lua' }, -- add your languages here
  callback = function()
    vim.treesitter.start()
  end,
})
