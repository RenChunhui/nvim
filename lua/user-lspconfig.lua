local fn = vim.fn

-- Change diagnostic symbols in the sign column
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end



-- Print diagnostics to message area
function PrintDiagnostics(opts, bufnr, line_nr, client_id)
  bufnr = bufnr or 0
  line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
  opts = opts or {['lnum'] = line_nr}

  local line_diagnostics = vim.diagnostic.get(bufnr, opts)
  if vim.tbl_isempty(line_diagnostics) then return end

  local diagnostic_message = ""
  for i, diagnostic in ipairs(line_diagnostics) do
    diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
    print(diagnostic_message)
    if i ~= #line_diagnostics then
      diagnostic_message = diagnostic_message .. "\n"
    end
  end
  vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
end

vim.cmd [[ autocmd! CursorHold * lua PrintDiagnostics() ]]


-- Enable the following language servers
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local servers = {'bashls','cssls','gopls','html','jsonls','tailwindcss','tsserver','yamlls'}
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Vue language server
require('lspconfig').volar.setup{
  capabilities = capabilities,
  init_options = {
    typescript = {
      tsdk = vim.fn.expand('$HOME') .. '/.local/share/yarn/global/node_modules/typescript/lib'
    }
  }
}

-- Lua language server
require('lspconfig').sumneko_lua.setup {
  cmd = {
    fn.expand('$HOME') .. '/.config/nvim/lua-language-server/bin/lua-language-server',
    '-E',
    fn.expand('$HOME') .. '/.config/nvim/lua-language-server/main.lua'
  },
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT'
      },
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = {[fn.expand('$VIMRUNTIME/lua')] = true, [fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
      },
      telemetry = {
        enable = false,
      },
    }
  }
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = true,
  }
)
