return {
  {
    'prettier/vim-prettier',
    evnet = 'BufRead'
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter'
  },

  {
    'windwp/nvim-ts-autotag',
    opts = {}
  },

  {
    'jose-elias-alvarez/null-ls.nvim',
    event = { "BufReadPre", "BufNewFile" }
  }
}
