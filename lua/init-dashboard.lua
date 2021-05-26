vim.g.dashboard_custom_header = {      
    '██████████████████████████████████████',
    '█▄─▀█▄─▄█▄─▄▄─█─▄▄─█▄─█─▄█▄─▄█▄─▀█▀─▄█',
    '██─█▄▀─███─▄█▀█─██─██▄▀▄███─███─█▄█─██',
    '▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀▀▄▀▀▀▄▄▄▀▄▄▄▀▄▄▄▀',
    '██████████████████████████████████████'                                                                            
}

vim.g.dashboard_default_executive = 'telescope'

-- vim.g.dashboard_custom_section = {
--     a = {description = {'  Find File            '}, command = 'Telescope find_files'},
--     b = {description = {'  Recently Used Files  '}, command = 'Telescope oldfiles'},
--     c = {description = {'  Load Last Session    '}, command = 'SessionLoad'},
--     d = {description = {'  Find Word            '}, command = 'Telescope live_grep'},
--     e = {description = {'  NeoVim Configuration '}, command = ':e ~/.config/nvim/init.lua'}
-- }

vim.g.dashboard_custom_section = {
    a = { description = { ' Change colorscheme                    SPC t c' }, command = '' },
    b = { description = { ' Find file                             SPC f f' }, command = ''},
    e = { description = { ' NeoVim Configuration                  SPC t i' }, command = ':e ~/.config/nvim/init.lua'}
}

-- vim.g.dashboard_custom_footer = {
--     'Author: Chunhui Ren <renchunhui2008@gmail.com>'
-- }