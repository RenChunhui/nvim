return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    spec = {
      { "<leader>b", group = "Buffers" },
      { "<leader>f", group = "Files" },
      { '<leader>s', group = 'Search' }
    },
    icons = {
      mappings = false
    }
  },
  keys = {
    {
      '<leader>?',
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps",
    }
  }
}
