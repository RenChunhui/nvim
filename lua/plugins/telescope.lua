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
        theme = 'dropdown',
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
      },
      colorscheme = {
        previewer = false,
        theme = 'dropdown'
      }
    },
    extensions = {

    }
  }
}
