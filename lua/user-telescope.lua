local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node%_modules/.*"
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close
      }
    },
		prompt_prefix = '  ',
		-- borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    results_title = '',
  },
  pickers = {

  },
  extensions = {

  }
})
