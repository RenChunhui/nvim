----------------------------------------------------
-- init-plugins.lua - 插件安装
--
-- Author : Chunhui Ren <renchunhui2008@gmail.com>
-- License: MIT License
----------------------------------------------------

require('packer').startup(function (use)
    -- 插件管理
    use { 'wbthomason/packer.nvim', opt = true }

    -- LSP
    use { 'neovim/nvim-lspconfig' }

    -- Autocomplete
    use { 'hrsh7th/nvim-compe' }
    use { 'hrsh7th/vim-vsnip'}

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'}
        }
    }

    -- Syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

    -- Explorer
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'kyazdani42/nvim-web-devicons' }

    -- UI
    use { 'glepnir/dashboard-nvim'}
    use { 'romgrk/barbar.nvim' }
    use { 'sainnhe/sonokai'}

    use { 'folke/which-key.nvim' }
    use { 'windwp/nvim-autopairs' }
end)