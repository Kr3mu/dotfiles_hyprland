-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'windwp/nvim-autopairs'

    use {
        'datsfilipe/min-theme.nvim',
        as = 'min-theme',
        config = function ()
            vim.cmd('colorscheme min-theme')
        end
    }
    use(
        'nvim-treesitter/nvim-treesitter',
        {run = ':TSUpdate'}
    )
    use 'nvim-treesitter/playground'

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate"
    }

    use "williamboman/mason-lspconfig.nvim"

    use "neovim/nvim-lspconfig"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'

    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
end)

