return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-lualine/lualine.nvim' },
  opts = {
    options = {
      icons_enabled = true,
      section_separators = '',
      component_separators = ''
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat' },
      lualine_y = { 'filetype' },
      lualine_z = { 'location' }
    },
  }
}
