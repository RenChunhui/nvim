return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require("which-key")

    wk.setup(opts)
    wk.register({
        b = {
          name = 'Buffers',
          ['1'] = { '<cmd>lua require("bufferline").go_to(1, true)<cr>', 'Go To 1' },
          ['2'] = { '<cmd>lua require("bufferline").go_to(2, true)<cr>', 'Go To 2' },
          ['3'] = { '<cmd>lua require("bufferline").go_to(3, true)<cr>', 'Go To 3' },
          ['4'] = { '<cmd>lua require("bufferline").go_to(4, true)<cr>', 'Go To 4' },
          ['5'] = { '<cmd>lua require("bufferline").go_to(5, true)<cr>', 'Go To 5' },
          ['6'] = { '<cmd>lua require("bufferline").go_to(6, true)<cr>', 'Go To 6' },
          ['7'] = { '<cmd>lua require("bufferline").go_to(7, true)<cr>', 'Go To 7' },
          ['8'] = { '<cmd>lua require("bufferline").go_to(8, true)<cr>', 'Go To 8' },
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
          f = { '<cmd>Telescope find_files<cr>', 'File', },
          h = { '<cmd>Telescope search_history<cr>', 'History' },
          r = { '<cmd>Telescope oldfiles<cr>', 'Recent'}
        },
        g = {
          name = 'Git',
          b = {'<cmd>Telescope git_branches<CR>', 'Git Branches'},
          c = {'<cmd>Telescope git_commits<CR>','Git Commits'},
          s = {'<cmd>Telescope git_status<CR>','Git Status'}
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
        s = {
          name = 'Search',
          k = {'<cmd>Telescope keymaps<cr>','Keymaps'}
        },
        t = {
          name = 'Toggle',
          b = { '<cmd>Gitsigns toggle_current_line_blame<cr>', 'Git Blamer' },
          e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
          p = {
            name = 'Problems',
            a = { '<cmd>TroubleToggle<CR>', 'All Problems' },
            w = { '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Workspace Diagnostics'},
            d = { '<cmd>TroubleToggle document_diagnostics<cr>', 'Document Diagnostics'},
            q = { '<cmd>TroubleToggle quickfix<CR>', 'Quickfix'},
            r = { '<cmd>TroubleToggle lsp_references<cr>', 'LSP References'},
          },
          t = { '<cmd>lua require"telescope.builtin".colorscheme{}<CR>', 'Theme'},
        },
        w = {
          name = 'Windows'
        }
      }, {
        mode = 'n',
        prefix = '<leader>'
      })

      wk.register({

      }, {
        mode = 'n',
        prefix = '<C-w>'
      })
    end
}
