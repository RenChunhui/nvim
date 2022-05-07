require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'css',
    'go',
    'html',
    'javascript',
    'json',
    'lua',
    'python',
    'rust',
    'scss',
    'typescript',
    'vue',
    'yaml'
  },
  highlight = {
    enable = true
  }
}
