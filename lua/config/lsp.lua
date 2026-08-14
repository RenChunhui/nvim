local kind_icons = {
  [1]  = "󰉿",  -- Text
  [2]  = "󰆧",  -- Method
  [3]  = "󰊕",  -- Function
  [4]  = "󰐥",  -- Constructor
  [5]  = "󰜢",  -- Field
  [6]  = "󰀫",  -- Variable
  [7]  = "󰠱",  -- Class
  [8]  = "",   -- Interface
  [9]  = "",   -- Module
  [10] = "󰜢",  -- Property
  [11] = "󰑭",  -- Unit
  [12] = "󰎠",  -- Value
  [13] = "",   -- Enum
  [14] = "󰌋",  -- Keyword
  [15] = "󰅩",  -- Snippet
  [16] = "󰏘",  -- Color
  [17] = "󰈙",  -- File
  [18] = "󰈇",  -- Reference
  [19] = "󰉋",  -- Folder
  [20] = "󰅝",  -- EnumMember
  [21] = "󰏿",  -- Constant
  [22] = "󰙅",  -- Struct
  [23] = "",   -- Event
  [24] = "󰆕",  -- Operator
  [25] = "󰉺",  -- TypeParameter
}


vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true,client.id, args.buf, {
        autotrigger = true,
        convert = function(item)
          return {
            kind = kind_icons[item.kind] or '?'
          }
        end
      })
    end
  end,
})
