
" 统计插件数量
function! startup#plugins() abort
  let l:packer = stdpath('data') .'/site/pack/packer/opt/packer.nvim'
  if isdirectory(l:packer)
    let l:total_plugins = luaeval('#vim.tbl_keys(packer_plugins)')
  endif

  return l:total_plugins
endfunction
