local dashboard = require('dashboard')

dashboard.custom_header = {
[[                                             ]],
[[_____   __          ___    ______            ]],
[[___  | / /____________ |  / /__(_)______ ___ ]],
[[__   |/ /_  _ \  __ \_ | / /__  /__  __ `__ \]],
[[_  /|  / /  __/ /_/ /_ |/ / _  / _  / / / / /]],
[[/_/ |_/  \___/\____/_____/  /_/  /_/ /_/ /_/ ]],
[[                                             ]],
}

dashboard.custom_center = {
  { icon = ' ', desc = 'File     ', shortcut = 'SPC f f', action = 'Telescope find_files' },
  { icon = ' ', desc = 'History  ', shortcut = 'SPC f h', action = 'Telescope search_history' },
  { icon = 'ﬤ ', desc = 'Help     ', shortcut = 'SPC h  ', action = '' },
  { icon = ' ', desc = 'Exit     ', shortcut = 'SPC q  ', action = '' }
}

dashboard.custom_footer = {
  [[  ]],
}

dashboard.hide_statusline = true
dashboard.hide_tabline = true
