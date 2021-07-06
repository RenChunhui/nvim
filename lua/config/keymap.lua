local mappings = {
  a = {
      name = "Application",
      v = {"<cmd>:e ~/.config/nvim/init.lua<cr>", "NeoVim"}
  },
  b = {
      name = "Buffer",
      d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
      D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
      f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
      F = { "<cmd>Telescope buffers<cr>", "Find Buffer"},
  },
  c = {
    name = "Compile/Comments"
  },
  d = {
      name = "Debug"
  },
  f = {
      name = "File",
      f = { "<cmd>Telescope find_files<cr>", "Find File"}
  },
  g = {
      name = "Git"
  },
  h = {
      name = "Help",
      k = { "<cmd>Telescope keymaps<cr>", "Keymaps"}
  },
  l = {
      name = "LSP",
  },
  p = {
    name = "Profile"
  },
  q = {
    name = "Quit"
  },
  s = {
      name = "Search",
      h = { "<cmd>Telescope search_history<cr>","History"}
  },
  t = {
      name = "Toggle",
      c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme"},
      e = { "<cmd>:NvimTreeToggle<cr>", "Explorer"},
  },
  w = {
    name = "Windows"
  }
}

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false
}

local wk = require("which-key")
wk.register(mappings, opts)
wk.setup({
  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },
  icons = {
    group = ""
  },
  window = {
    border = "none",
  },
  layout = {
    height = { min = 1 },
    align = "center"
  }
})
