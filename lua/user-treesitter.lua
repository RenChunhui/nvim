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
    'yaml',
		'org'
  },
  highlight = {
    enable = true,
		disable = { 'org' },
  },
  playground = {
    enable = true,
    disable = {},
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
