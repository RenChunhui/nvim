return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    cmd = { 'TSUpdateSync' },
    event = { "BufReadPost", "BufNewFile" },
    keys = {
      { "<c-space>", desc = "Increment selection" },
      { "<bs>", desc = "Decrement selection", mode = "x" },
    },
    ---@type TSConfig
    opts = {
      auto_install = true,
      sync_install = true,
      ensure_installed = {
        'bash',
        'css',
        'go',
        'html',
        'javascript',
        'json',
        'lua',
        'python',
        'rust',
        'toml',
        'typescript',
        'vue',
        'yaml'
      },
      highlight = {
        enable = true,
      },
      playground = {
        enable = true,
        disable = {},
        keybindings = {
          toggle_query_editor = 'o',
          toggle_hl_groups = 'i',
          toggle_injected_languages = 't',
          toggle_anonymous_nodes = 'a',
          toggle_language_display = 'I',
          focus_language = 'f',
          unfocus_language = 'F',
          update = 'R',
          goto_node = '<cr>',
          show_help = '?',
        },
      },
      autotag = {
        enable = true,
        filetypes = { 'html', 'vue' }
      }
    },
    ---@param opts TSConfig
    config = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@type table<string, boolean>
        local added = {}
        opts.ensure_installed = vim.tbl_filter(function(lang)
          if added[lang] then
            return false
          end
          added[lang] = true
          return true
        end, opts.ensure_installed)
      end
      require("nvim-treesitter.configs").setup(opts)
    end
  }
}
