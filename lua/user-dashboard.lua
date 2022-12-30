local api = vim.api
local keymap = vim.keymap
local db = require('dashboard')

db.custom_header = {
  "                                                       ",
  "                                                       ",
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "                                                       ",
  "                                                       ",
  "                                                       ",
  "                                                       ",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Find  File                              ",
    action = "",
    shortcut = "<SPC> f f"
  },
  {
    icon = "  ",
    desc = "Open Nvim config                        ",
    action = "",
    shortcut = "<SPC> e v"
  },
  {
    icon = "  ",
    desc = "Quit                                    ",
    action = "",
    shortcut = "q        "
  }
}

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  -- group = api.nvim_create_augroup("dashboard_center", { clean = true }),
  callback = function()
  end
})
