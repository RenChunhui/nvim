return {
  'nvim-tree/nvim-web-devicons',
  opts = {
    override = {
      go = {
        icon = '󰟓'
      }
    },
    override_by_filename = {
      ['.editorconfig'] = {
        icon = ''
      }
    }
  }
}
