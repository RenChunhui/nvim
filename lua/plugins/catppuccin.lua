return {
  "catppuccin/nvim",
  name = "catppuccin",
  event = "VeryLazy",
  opts = {
    flavour = "macchiato"
  },
  config = function ()
    vim.cmd.colorscheme "catppuccin"
  end
}
