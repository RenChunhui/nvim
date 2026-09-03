return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    columns = {
      'icon'
    },
    view_options = {
      show_hidden = true
    },
    keymaps = {
      ["<Esc>"] = "actions.close",
    },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    {
      '<leader>te',
      function()
        if vim.bo.filetype == 'oil' then
          require('oil').close()
        else
          require('oil').open()
        end
      end,
      desc = 'Toggle Explorer'
    }
  }
}
