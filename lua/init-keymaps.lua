vim.g.mapleader = ' '

local mappings = {
    a = {
        name = "+Application",
        v = {"<cmd>:e ~/.config/nvim/init.lua<cr>", "NeoVim"}
    },
    b = {
        name = "+Buffer",
        f = { "<cmd>Telescope buffers<cr>", "Find Buffer"}
    },
    c = {
      name = "+Compile/Comments"
    },
    d = {
        name = "+Debug"
    },
    f = {
        name = "+File",
        f = { "<cmd>Telescope find_files<cr>", "Find File"}
    },
    g = {
        name = "+Git"
    },
    h = {
        name = "+Help",
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps"}
    },
    l = {
        name = "+LSP",
    },
    q = {
      name = "+Quit"
    },
    s = {
        name = "+Search",
        h = { "<cmd>Telescope search_history<cr>","History"}
    },
    t = {
        name = "+Toggle",
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        e = { "<cmd>:NvimTreeToggle<cr>", "Explorer"},
    },
    w = {
      name = "+Windows"
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
