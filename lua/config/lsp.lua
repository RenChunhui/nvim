local kind_icons = {
  [1]  = "󰉿", -- Text
  [2]  = "󰆧", -- Method
  [3]  = "󰊕", -- Function
  [4]  = "󰐥", -- Constructor
  [5]  = "󰜢", -- Field
  [6]  = "󰀫", -- Variable
  [7]  = "󰠱", -- Class
  [8]  = "", -- Interface
  [9]  = "", -- Module
  [10] = "󰜢", -- Property
  [11] = "󰑭", -- Unit
  [12] = "󰎠", -- Value
  [13] = "", -- Enum
  [14] = "󰌋", -- Keyword
  [15] = "󰅩", -- Snippet
  [16] = "󰏘", -- Color
  [17] = "󰈙", -- File
  [18] = "󰈇", -- Reference
  [19] = "󰉋", -- Folder
  [20] = "󰅝", -- EnumMember
  [21] = "󰏿", -- Constant
  [22] = "󰙅", -- Struct
  [23] = "", -- Event
  [24] = "󰆕", -- Operator
  [25] = "󰉺", -- TypeParameter
}

vim.lsp.enable({
  'lua_ls'
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
  callback = function(event)
    local bufnr = event.buf
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map('n', 'gd', vim.lsp.buf.definition, 'Go to definition')
    map('n', 'gD', vim.lsp.buf.declaration, 'Go to declaration')
    map('n', 'gy', vim.lsp.buf.type_definition, 'Go to type definition')
    map('n', 'gI', vim.lsp.buf.implementation, 'Go to implementation')
    map('n', 'cd', vim.lsp.buf.rename, 'Rename (change definition)')
    map('n', 'gA', vim.lsp.buf.references, 'Go to All references to the current word')
    map('n', 'gs', vim.lsp.buf.document_symbol, 'Find symbol in current file')
    map('n', 'gS', vim.lsp.buf.workspace_symbol, 'Find symbol in entire project')
    map('n', 'g]', vim.diagnostic.goto_next, 'Go to next diagnostic')
    map('n', 'g[', vim.diagnostic.goto_prev, 'Go to previous diagnostic')
    map('n', 'gh', vim.lsp.buf.hover, 'Show inline error (hover)')
    map('n', 'g.', vim.lsp.buf.code_action, 'Open the code actions menu')
  end,
})
