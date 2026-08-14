local autocmd = vim.api.nvim_create_autocmd

-- yank 高亮
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
