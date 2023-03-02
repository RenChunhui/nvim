return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      diagnostics = false,
      color_icons = false,
      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      numbers = function(opts)
        return string.format('%s', opts.raise(opts.ordinal))
      end,
      offsets = {
        {
          filetype = 'NvimTree',
          text = ' 󰙅 EXPLORER',
          highlight = 'NvimTreeNormal',
          text_align = "left",
        }
      }
    }
  }
}
