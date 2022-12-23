local fn = vim.fn

-- Change diagnostic symbols in the sign column
local signs = {Error = "", Warn = "", Hint = "", Info = ""}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end

-- Go to definition in a split window
local function goto_definition(split_cmd)
  local util = vim.lsp.util
  local log = require("vim.lsp.log")
  local api = vim.api

  -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
  local handler = function(_, result, ctx)
    if result == nil or vim.tbl_isempty(result) then
      local _ = log.info() and log.info(ctx.method, "No location found")
      return nil
    end

    if split_cmd then
      vim.cmd(split_cmd)
    end

    if vim.tbl_islist(result) then
      util.jump_to_location(result[1])

      if #result > 1 then
        util.set_qflist(util.locations_to_items(result))
        api.nvim_command("copen")
        api.nvim_command("wincmd p")
      end
    else
      util.jump_to_location(result)
    end
  end

  return handler
end

vim.lsp.handlers["textDocument/definition"] = goto_definition('split')

-- Enable update on insert
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

-- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Enable the following language servers
local servers = {'angularls','bashls','cssls','gopls','html','jsonls','tailwindcss','tsserver','volar','yamlls'}
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end

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
