local wk = require('which-key')

wk.setup({
  plugins = {},
  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»",
    separator = "  ",
    group = "+",
  },
  window = {
    border = 'none',
    position = 'bottom',
    margin = { 0, 0, 0, 0 },
    padding = { 1, 1, 1, 1 },
  },
  layout = {
    height = { min = 3, max = 25 }
  }
})

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
    f = { '<cmd>lua vim.lsp.buf.formatting()<cr>', 'Format' },
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
