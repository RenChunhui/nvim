vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_root_folder_modifier = ":~"
vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  folder_arrows = 1,
  files = 1
}
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
    empty_open = '',
    symlink = '"',
    symlink_open = ''
  }
}

require'nvim-tree'.setup {
  open_on_tab = true,
  renderer = {
    indent_markers = {
      enable = false
    }
  },
  filters = {
    dotfiles = false,
    custom = {
      '.git',
      '.idea',
      '.vscode',
      '.cache',
      '.DS_Store'
    }
  },
  git = {
    enable = true,
    ignore = false,
  }
}
