-- 安装 packer 包管理工具
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-compe'

    use 'glepnir/dashboard-nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)