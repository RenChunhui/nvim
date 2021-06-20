require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'css',
    'go',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'python',
    'scss',
    'toml',
    'typescript',
    'vue',
    'yaml'
  },
  autopairs = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true
  },
  query_linter = {
    enable = true
  }
}
