return {
  -- {
  --   'prettier/vim-prettier',
  --   evnet = 'BufRead'
  -- },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {
      disable_filetype = {
        'TelescopePrompt'
      }
    }
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
