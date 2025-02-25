return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    servers = {
      astro = {},
      bashls = {},
      cssls = {},
      gopls = {},
      html = {},
      jsonls = {},
      tailwindcss = {},
      ts_ls = {},
      yamlls = {},
      volar = {
        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        init_options = {
          vue = {
            hybridMode = false,
          }
        }
      },
      lua_ls = {}
    }
  },
  config = function(_,opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
