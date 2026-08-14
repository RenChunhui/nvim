local opt = vim.opt
local o = vim.o
--------------------------------------------------
-- UI
--------------------------------------------------

-- 显示行号
opt.number = true

-- 相对行号
opt.relativenumber = false

-- 光标所在行高亮
opt.cursorline = true

-- 始终显示符号列，避免界面抖动
opt.signcolumn = "yes"

-- 24 位真彩色
opt.termguicolors = true

-- 减少命令行占用
opt.cmdheight = 0

--------------------------------------------------
-- 缩进
--------------------------------------------------

-- Tab 转空格
opt.expandtab = true

-- 自动缩进宽度
opt.shiftwidth = 2

-- Tab 宽度
opt.tabstop = 2

-- 智能缩进
opt.smartindent = true

--------------------------------------------------
-- 搜索
--------------------------------------------------

-- 忽略大小写
opt.ignorecase = true

-- 包含大写时区分大小写
opt.smartcase = true

-- 实时搜索结果
opt.incsearch = true

--------------------------------------------------
-- 编辑体验
--------------------------------------------------

-- 系统剪贴板
opt.clipboard = "unnamedplus"

-- 撤销历史持久化
opt.undofile = true

-- 鼠标支持
opt.mouse = "a"

-- 新窗口位置
opt.splitbelow = true
opt.splitright = true

-------------------------------------------------
-- 性能
-------------------------------------------------

-- 语法高亮最大列数
opt.synmaxcol = 200

-- 更新时间
opt.updatetime = 200

-- 映射超时
opt.timeoutlen = 300

-- 减少交换文件 IO
opt.swapfile = false

-- 不生成备份文件
opt.backup = false

-- 不生成写入前备份
opt.writebackup = false

--------------------------------------------------
-- 补全
--------------------------------------------------

-- 启用原生自动补全
o.autocomplete = true

-- 补全菜单行为
opt.completeopt = {
  "menu",
  "menuone",
  "noinsert",
  "noselect",
  "popup",
  "fuzzy"
}

opt.complete = {
  ".",
  "w",
  "b",
  "u",
  "U",
  "t",
  "kspell",
  "o",
}

opt.completeitemalign = {
  'kind',
  'abbr',
  'menu'
}
--------------------------------------------------
-- 折叠
--------------------------------------------------

-- 默认不折叠
opt.foldenable = false
