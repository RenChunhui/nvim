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
        ["<C-t>"] = tree_cb("tabnew"),
				['R'] = tree_cb('refresh'),
				['a'] = tree_cb('create'),
				['d'] = tree_cb('remove'),
				['r'] = tree_cb('rename'),
				['x'] = tree_cb('cut'),
				['c'] = tree_cb('copy'),
				['p'] = tree_cb('paste'),
        ['q'] = tree_cb('close'),
        ['<Tab>'] = tree_cb('edit')
}

require'nvim-web-devicons'.setup {
  override = {
    ['vim'] = {
      icon = '',
      color = '#3C8376',
      name = 'Vim'
    },
    ['.vimrc'] = {
      icon = '',
      color = '#3C8376',
      name = 'Vimrc'
    },
    ['.gvimrc'] = {
      icon = '',
      color = '#3C8376',
      name = 'Gvimrc'
    },
    ['.npmrc'] = {
      icon = "",
      color = "#E8274B",
      name = 'npmrc'
    },
    ['angular.json'] = {
      icon = "",
      color = "#E23237",
      name = 'Angular'
    },
    ['yarn.lock'] = {
      icon = '',
      color = '#2188B6',
      name = 'Yarn'
    },


    ---------------------------------------------
    -- Git
    ---------------------------------------------
    ['git'] = {
      icon = '',
      color = '#DD4C35',
      name = 'GitLogo'
    },
    ['.gitattributes'] = {
      icon = '',
      color = '#DD4C35',
      name = 'GitAttributes'
    },
    ['.gitconfig'] = {
      icon = '',
      color = '#DD4C35',
      name = 'GitConfig'
    },
    ['.gitignore'] = {
      icon = '',
      color = '#DD4C35',
      name = 'GitIgnore'
    },
    ['.gitmodules'] = {
      icon = '',
      color = '#DD4C35',
      name = 'GitModules'
    },

    ---------------------------------------------
    -- Files
    ---------------------------------------------

    ['Makefile'] = {
      icon = "",
      color = '#fff',
      name = 'Makefile'
    },
    ["Dockerfile"] = {
      icon = "",
      color = "#27B9EC",
      name = "Dockerfile"
    },
    ["Gemfile$"] = {
      icon = "",
      color = "#701516",
      name = "Gemfile"
    },
    ["Brewfile"] = {
      icon = "",
      color = "#6F4E37",
      name = "Gemfile"
    },
  }
}
