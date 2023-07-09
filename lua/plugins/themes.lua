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
      which_key = false,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      }
    }
  },
  config = function ()
    vim.cmd.colorscheme "catppuccin"
  end
}
