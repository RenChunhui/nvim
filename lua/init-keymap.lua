-- local wk = require('which-key')

-- wk.register({
--     a = {
--         name = 'Application'
--     },
--     b = {
--         name = 'Buffer',
--     },
--     f= {
--         name = 'File',
--     },
--     g = {
--         name = 'Git'
--     },
--     t = {
--         name = 'Toggle',
--     }
-- },{
--     prefix = '<leader>'
-- })
local mapping = {
    a = {
        name = '+Application'
    },
    b = {
        name = '+Buffer'
    },
    d = {
        name = '+Debug'
    },
    f = {
        name = '+File'
    },
    g = {
        name = 'Git'
    },
    l = {
        name = '+LSP'
    },
    s = {
        name = '+Search'
    },
    t = {
        name = '+Toggle'
    }
}

local opts = {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
}

local wk = require('which-key')
wk.register(mapping,opts)