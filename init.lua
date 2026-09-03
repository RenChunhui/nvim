-- 加载全局设置与基础选项
require('config.globals')
require('config.options')

-- 加载诊断配置与 UI 图标
require("config.ui")
require('config.diagnostics')

-- 加载按键映射与自动命令
require('config.keymaps')
require('config.autocmds')

-- 加载代码解析与 LSP
require('config.lsp')

require('config.lazy')
