return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        {
          desc = ' Vim',
          action = 'edit $MYVIMRC',
          key = 'v'
        },
        {
          desc = '󰒲 Lazy',
          action = 'Lazy',
          key = 'l'
        },
        {
          desc = '󰋖 Help',
          action = 'h',
          key = 'h'
        },
        {
          desc = '󰐥 Quit',
          action = 'q',
          key = 'q'
        }
      },
      packages = {
        enable = true
      },
      project = {
        limit = 5,
        action = 'Telescope find_files cwd='
      },
      mru = {
        limit = 5,
        icon = '',
        label = '  Recent Files'
      },
      footer = {}
    }
  }
}
