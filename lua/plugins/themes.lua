return {
  "catppuccin/nvim",
  name = "catppuccin",
  event = 'VeryLazy',
  opts = {
    flavour = "macchiato",
    integrations = {
      dashboard = true,
      cmp = true,
      nvimtree = true,
      treesitter = true,
      telescope = true,
      which_key = false
    }
  },
  config = function ()
    vim.cmd.colorscheme "catppuccin"
  end
}
