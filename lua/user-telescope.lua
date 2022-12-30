local telescope = require('telescope')
local actions = require('telescope.actions')
local action_layout = require("telescope.actions.layout")

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      ".git/",
      "node%_modules/.*",
      "vendor/*",
      "%.lock",
      ".gradle/",
      ".idea/",
      ".settings/",
      ".vscode/",
    },
    mappings = {
      n = {
        ["<M-p>"] = action_layout.toggle_preview
      },
      i = {
        ["<esc>"] = actions.close,
        ["<M-p>"] = action_layout.toggle_preview
      }
    },
		prompt_prefix = '  ',
		-- borderchars = {
    --   prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
    --   results = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
    --   preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' },
    -- },
    results_title = '',
  },
  pickers = {

  },
  extensions = {

  }
})
