----------------------------------------------------
-- init-plugins.lua - Install Plugins
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.cmd "autocmd BufWritePost init-plugins.lua PackerCompile"
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- 插件管理
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'}
        }
    }

    -- Syntax
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    -- Explorer
    use 'kyazdani42/nvim-tree.lua'

    -- UI
    use 'ChristianChiarulli/dashboard-nvim'
    use 'romgrk/barbar.nvim'

    use 'folke/which-key.nvim'
    use 'windwp/nvim-autopairs'
    use 'editorconfig/editorconfig-vim'
end)
