return {
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  opts = {
    open_on_tab = true,
    renderer = {
      indent_markers = {
        enable = false
      },
      highlight_git = true,
      highlight_opened_files = "none",
      root_folder_modifier = ":~",
      special_files = {},
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = false
        },
        glyphs = {
          default = '',
          symlink = '',
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
}
