return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
  opts = {
    install_dir = vim.fn.stdpath('data') .. '/site',
    install = {
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
    }
  }
}
