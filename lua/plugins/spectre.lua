return {
  'windwp/nvim-spectre',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    color_devicons = true,
    highlight = {
      ui = "String",
      search = "DiffChange",
      replace = "DiffDelete"
    },
    find_engine = {
      ['rg'] = {
        cmd = 'rg',
        args = {
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
        },
        options = {
          ['ignore-case'] = {
            value = "--ignore-case",
            icon = "[I]",
            desc = "ignore case"
          },
          ['hidden'] = {
            value = "--hidden",
            desc = "hidden file",
            icon = "[H]"
          },
          -- you can put any rg search option you want here it can toggle with
          -- show_option function
        }
      }
    },
    replace_engine = {
      ['sed'] = {
        cmd = "sed",
        args = nil,
        options = {
          ['ignore-case'] = {
            value = "--ignore-case",
            icon = "[I]",
            desc = "ignore case"
          },
        }
      }
    },
  }
}
