require('dashboard').setup({
  theme = 'hyper',
  config = {
    week_header = {
      enable = true,
    },
    shortcut = {
      {
        desc = ' Update',
        group = '@property',
        action = 'PackerUpdate',
        key = 'u'
      },
      {
        desc = ' Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Apps',
        group = 'DiagnosticHint',
        action = 'Telescope app',
        key = 'a',
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
      icon = ''
    },
    footer = {}
  },
})
