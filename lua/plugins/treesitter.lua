return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  ---@type TSConfig
  opts = {
    ensure_installed = {
      'astro',
      'bash',
      'css',
      'diff',
      'go',
      'html',
      'javascript',
      'json',
      'lua',
      'prisma',
      'python',
      'typescript',
      'toml',
      'vue',
      'yaml'
    },
    sync_install = false,
    auto_install = true,
  },
  indent = {
    enable = true
  },
  highlight = {
    enable = true
  }
}
