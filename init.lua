require('config/globals')
require('config/options')

require('config/keymaps')
require('config/autocmds')

require('config/treesitter')
require("config/ui")

require('config/diagnostics')
require('config/lsp')

require('plugins')

vim.cmd("colorscheme base16-github")
