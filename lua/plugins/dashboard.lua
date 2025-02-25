return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = 'echasnovski/mini.icons',
  opts = {
    theme = 'hyper',
    config = {
      week_header = { enable = false },
      shortcut = {
        { desc = '󰊳 Lazy', group = '@property', action = ':Lazy', key = 'l' },
        { desc = '  Quit', group = '@property', action = ':qa', key = 'q' }
      }
    }
  }
}
