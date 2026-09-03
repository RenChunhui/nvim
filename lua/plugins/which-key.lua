return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts_extend = { "spec" },
  opts = {
    notify = true,
    icons = {
      rules = false
    },
    spec = {
      { '<leader>a', group = 'AI' },
      { '<leader>b', group = 'Buffers' },
      { '<leader>c',  group = 'Code & LSP' },
      { '<leader>d', group = 'Debug & Diagnostics'},
      { "<leader>f", group = "Find & Search" },
      { '<leader>g', group = 'Git' },
      { '<leader>gh', group = 'Hunks' },
      { "<leader>h",  group = "History" },
      { '<leader>s', group = 'Split & Window'},
      { "<leader>t", group = "Toggle" },
    },
    win = {
      border = 'none',
      height = {
        min = 3,
        max = 5
      }
    }
  }
}
