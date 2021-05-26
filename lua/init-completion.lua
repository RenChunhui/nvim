require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.jsonls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}