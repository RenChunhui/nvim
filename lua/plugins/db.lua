return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod',                     lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', lazy = true }
  },
  cmd = { 'DBUIToggle', 'DBUIAddConnection', 'DBUI', 'DBUIFindBuffer', 'DBUIRenameBuffer' }
}
