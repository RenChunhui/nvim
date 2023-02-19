return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    cmd = 'Telescope',
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node%_modules/.*"
        },
        prompt_prefix = " ",
        selection_caret = " ",
        mappings = {
          i = {
          }
        },
        results_title = '',
      },
      pickers = {

      },
      extensions = {

      }
    }
  }
}
