-- 宽度
vim.g.nvim_tree_width = 32

vim.g.nvim_tree_ignore = {'.git', '.cache'}

vim.g.nvim_tree_gitignore = 1

vim.g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}

vim.g.nvim_tree_quit_on_open = 1

vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_tab_open = 1

-- 默认图标
vim.g.nvim_tree_icons = {
				default = '',
				symlink = '',
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
				['R'] = tree_cb('refresh'),
				['a'] = tree_cb('create'),
				['d'] = tree_cb('remove'),
				['r'] = tree_cb('rename'),
				['x'] = tree_cb('cut'),
				['c'] = tree_cb('copy'),
				['p'] = tree_cb('paste')
}
