return {
  'lukas-reineke/indent-blankline.nvim',
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    char = "│",
    filetype_exclude = {
      "help",
      "dashboard",
      "nvim-tree",
      "lazy",
      "toggleterm",
    },
    show_trailing_blankline_indent = false,
    show_current_context = false,
  }
}
