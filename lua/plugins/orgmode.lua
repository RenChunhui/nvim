return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function ()
    require('orgmode').setup({
      org_agenda_files = '~/SynologyDrive/vaultÏ'
    })
  end
}
