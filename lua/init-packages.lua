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
    -- plugin managers
    use 'wbthomason/packer.nvim'

    -- lsp & completion
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'

    -- dashboard
    use 'glepnir/dashboard-nvim'

    -- fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'}
      }
    }

    -- explorer
    use 'kyazdani42/nvim-tree.lua'

    -- which-key
    use 'folke/which-key.nvim'

    -- Syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- icons
    use 'kyazdani42/nvim-web-devicons'
    use 'romgrk/barbar.nvim'

    -- indent
    use 'lukas-reineke/indent-blankline.nvim'
end)