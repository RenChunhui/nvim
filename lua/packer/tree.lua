-- 宽度
vim.g.nvim_tree_width = 32

-- 过滤文件
vim.g.nvim_tree_ignore = {'.git', '.cache','.DS_Store'}

-- 显示 gitignore 的文件
vim.g.nvim_tree_gitignore = 0

-- 当是最后一个窗口时自动关闭
vim.g.nvim_tree_auto_close = 1

vim.g.nvim_tree_auto_ignore_ft = {'dashboard'}
vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_git_hl = 1

-- 高亮文件夹和图标
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_root_folder_modifier = "%:h"

-- 文件夹后面不加斜杠
vim.g.nvim_tree_add_trailing = 0

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  folder_arrows = 1,
  files = 1,
}

-- 当打开一个文件时，不要关闭
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_window_picker_exclude = {
  filetype = {
    'packer'
  }
}

-- 默认图标
vim.g.nvim_tree_icons = {
				default = '',
				symlink = '',
        git = {
          ignored = '◌'
        },
        folder = {
          arrow_open = '▾',
          arrow_closed = '▸',
          default = '',
          open = '',
          empty = '',
          empty_open = ''
        }
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
  { key = "<C-t>",                        cb = tree_cb("tabnew") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "<Tab>",                        cb = tree_cb("edit")}
}

