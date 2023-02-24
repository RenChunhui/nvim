return {
  {
    'neovim/nvim-lspconfig',
    -- event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      'hrsh7th/cmp-nvim-lsp'
    },
    config = function(_, opts)
      -- diagnostic
      for type, icon in pairs(require('core').icons.diagnostics) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      local servers = { 'bashls', 'cssls', 'gopls', 'html', 'jsonls', 'tailwindcss', 'tsserver', 'yamlls', 'pyright',
        'volar', 'lua_ls' }
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, lsp in ipairs(servers) do
        require('lspconfig')[lsp].setup {
          capabilities = capabilities,
        }
      end
    end
  }
}
