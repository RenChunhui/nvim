return {
  -- Dashboard
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            desc = ' Vim',
            group = '@constant',
            action = '',
            key = 'v'
          },
          {
            desc = '󰒲 Lazy',
            group = '@constant',
            action = 'Lazy',
            key = 'l'
          },
          {
            desc = '󰋖 Help',
            group = '@constant',
            action = '',
            key = 'h'
          },
          {
            desc = '󰐥 Quit',
            group = '@constant',
            action = 'q',
            key = 'q'
          }
        },
        packages = {
          enable = true
        },
        project = {
          limit = 5,
          action = 'Telescope find_files cwd='
        },
        mru = {
          limit = 5,
          icon = ''
        },
        footer = {}
      }
    }
  },

  -- File Explorer
  {
    'nvim-tree/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    opts = {
      open_on_tab = true,
      renderer = {
        indent_markers = {
          enable = false
        },
        highlight_git = true,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        special_files = {},
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false
          },
          glyphs = {
            default = '',
            symlink = '',
            folder = {
              arrow_open = '▾',
              arrow_closed = '▸',
              default = '',
              open = '',
              empty = '',
              empty_open = '',
              symlink = '"',
              symlink_open = ''
            }
          }
        }
      },
      filters = {
        dotfiles = false,
        custom = {
          '.git',
          '.idea',
          '.vscode',
          '.cache',
          '.DS_Store'
        }
      },
      git = {
        enable = true,
        ignore = false,
      }
    }
  },

  -- Keymaps
  {
    'folke/which-key.nvim',
    keys = '<space>',
    opts = {
      plugins = { spelling = true },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register({
        ['1'] = { '<cmd>BufferLineGoToBuffer 1<CR>', 'Tabline 1' },
        ['2'] = { '<cmd>BufferLineGoToBuffer 2<CR>', 'Tabline 2' },
        ['3'] = { '<cmd>BufferLineGoToBuffer 3<CR>', 'Tabline 3' },
        ['4'] = { '<cmd>BufferLineGoToBuffer 4<CR>', 'Tabline 4' },
        ['5'] = { '<cmd>BufferLineGoToBuffer 5<CR>', 'Tabline 5' },
        ['6'] = { '<cmd>BufferLineGoToBuffer 6<CR>', 'Tabline 6' },
        ['7'] = { '<cmd>BufferLineGoToBuffer 7<CR>', 'Tabline 7' },
        ['8'] = { '<cmd>BufferLineGoToBuffer 8<CR>', 'Tabline 8' },
        ['9'] = { '<cmd>BufferLineGoToBuffer 9<CR>', 'Tabline 9' },
        b = {
          name = 'Buffers',
          D = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'Declaration' },
          d = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'Definition' },
          f = { '<cmd>lua vim.lsp.buf.format { async = true }<cr>', 'Format' },
          h = { '<cmd>lua vim.lsp.buf.hover()<CR>', 'Hover' },
          r = { '<cmd>lua vim.lsp.buf.rename()<CR>', 'Rename' }
        },
        d = {
          name = 'Debug'
        },
        f = {
          name = 'Find',
          b = { '<cmd>Telescope buffers<cr>', 'Buffer' },
          f = { '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>', 'File', },
          h = { '<cmd>Telescope search_history<cr>', 'History' }
        },
        g = {
          name = 'Git'
        },
        h = {
          name = 'Help',
          c = { '<cmd>Telescope commands<cr>', 'Commands' },
          k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
          m = { '<cmd>Telescope man_pages<cr>', 'Man Pages' }
        },
        j = {
          name = 'Jump'
        },
        l = {
          name = 'LSP'
        },
        o = {
          name = 'Open'
        },
        p = {
          name = 'Project',
        },
        q = {
          name = 'Quit'
        },
        t = {
          name = 'Toggle',
          b = { '<cmd>BlamerToggle<cr>', 'Blamer' },
          e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' }
        },
        w = {
          name = 'Windows'
        }
      }, { prefix = '<leader>' })
    end
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {}
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lualine/lualine.nvim' },
    opts = {
      icons_enabled = true
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { "BufReadPre", "BufNewFile" },
    opts = {

    }
  }
}
