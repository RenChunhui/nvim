-- UI2
require("vim._core.ui2").enable({})

-- -- 诊断浮窗边框
-- vim.diagnostic.config({
--   float = {
--     border = "rounded",
--   },
-- })

-- -- LSP 悬停边框
-- vim.lsp.handlers["textDocument/hover"] =
--   vim.lsp.with(vim.lsp.handlers.hover, {
--     border = "rounded",
--   })

-- vim.lsp.handlers["textDocument/signatureHelp"] =
--   vim.lsp.with(vim.lsp.handlers.signature_help, {
--     border = "rounded",
--   })
