return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  cmd = 'Telescope',
  opts = {
    defaults = {
      mappings = {
        i = {
          -- ["<C-h>"] = "which_key",
          ["<esc>"] = function(...)
            return require("telescope.actions").close(...)
          end
        }
      },
      file_ignore_patterns = {
        "node%_modules/.*"
      },
      prompt_prefix = " ",
      selection_caret = " ",
      results_title = '',
    },
    pickers = {
      find_files = {
        previewer = false,
        theme = 'dropdown'
      }
    },
    extensions = {

    }
  }
}
