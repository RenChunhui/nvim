local mappings = {
    a = {
        name = "+Application"
    },
    b = {
        name = "+Buffer",
        f = { "<cmd>Telescope buffers<cr>", "Find Buffer"}
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
    s = {
        name = "+Search"
    },
    t = {
        name = "+Toggle",
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        e = { "<cmd>:NvimTreeToggle<cr>", "Explorer"},
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
