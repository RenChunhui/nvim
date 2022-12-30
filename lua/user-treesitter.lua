require('nvim-treesitter.configs').setup({
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
    'typescript',
    'vue',
    'yaml',
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  playground = {
    enable = true
  }
})
