return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = '',
      section_separators = '',
      disabled_filetypes = {
        statusline = {
          'dashboard'
        },
        winbar = {},
      },
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {'diagnostics'},
      lualine_x = {'encoding'},
      lualine_y = {'filetype'},
      lualine_z = {'location'}
    },
    integrations = {
      cmp = true,
      dashboard = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      which_key = true,
    }
  }
}
