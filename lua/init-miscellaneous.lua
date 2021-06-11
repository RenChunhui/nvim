vim.g.indent_blankline_enabled = true

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" }
})
