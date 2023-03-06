local filetypes = require'main'.lsp_filetypes

return require'packer'.startup(function(use)
    use {'wbthomason/packer.nvim'}

    use {'nvim-tree/nvim-web-devicons'}

    use {
        'williamboman/mason.nvim',
        config = function()
            require'mason'.setup {}
        end
    }

    use {
        'nvim-lua/plenary.nvim',
        after = 'bufferline.nvim'
    }

    use {
        'nvim-telescope/telescope.nvim',
        setup = function()
            require'mappings'.telescope()
        end,
        after = 'plenary.nvim'
    }

    use {
        'nvim-tree/nvim-tree.lua',
        cmd = 'NvimTreeToggle',
        setup = function()
            require'mappings'.nvimtree()
        end,
        config = function()
            require'nvim-tree'.setup {}
        end
    }

    use {
        'neovim/nvim-lspconfig',
        ft = filetypes,
        config = function()
            require 'plugins.lsp'
        end
    }

    use {
        'glepnir/lspsaga.nvim',
        branch = 'main',
        setup = function()
            require'mappings'.lspsaga()
        end,
        config = function()
            require'lspsaga'.setup {}
        end,
        requires = {{"nvim-tree/nvim-web-devicons"}, {"nvim-treesitter/nvim-treesitter"}}
    }

    use {
        'mhartington/formatter.nvim',
        ft = filetypes,
        cmd = 'Format',
        setup = function()
            require'mappings'.formatter()
        end,
        config = function()
            require 'plugins.format'
        end
    }

    use {
        'j-hui/fidget.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require'fidget'.setup {
                text = {
                    spinner = 'dots_negative'
                }
            }
        end
    }

    use {
        'ray-x/lsp_signature.nvim',
        after = 'lspsaga.nvim',
        config = function()
            require 'plugins.lsp_signature'
        end
    }

    use {
        'akinsho/bufferline.nvim',
        setup = function()
            require'mappings'.bufferline()
        end,
        config = function()
            require 'plugins.bufferline'
        end
    }

    use {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        config = function()
            require 'plugins.cmp'
        end
    }

    use {
        'L3MON4D3/LuaSnip',
        after = 'nvim-cmp'
    }

    use {
        'saadparwaiz1/cmp_luasnip',
        after = 'LuaSnip'
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
        after = 'cmp_luasnip'
    }

    use {
        'hrsh7th/cmp-path',
        after = 'cmp-nvim-lsp'
    }

    use {
        'hrsh7th/cmp-buffer',
        after = 'cmp-path'
    }

    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require 'plugins.lualine'
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        ft = filetypes,
        run = ':TSUpdate',
        event = 'BufRead',
        config = function()
            require 'plugins.nvim-treesitter'
        end
    }

    use {
        "nvim-treesitter/nvim-treesitter-context",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            require 'plugins.nvim-treesitter-context'
        end
    }

    use {
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter"
    }

    use {
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }

    use {
        'windwp/nvim-autopairs',
        after = 'nvim-cmp',
        config = function()
            require 'plugins.autopairs'
        end
    }

    use {
        'folke/trouble.nvim',
        after = 'nvim-lspconfig',
        setup = function()
            require'mappings'.trouble()
        end,
        config = function()
            require 'plugins.trouble'
        end
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require 'plugins.indent'
        end
    }

    use {
        'ggandor/leap.nvim',
        config = function()
            require'leap'.add_default_mappings()
        end
    }

    use {
        'EdenEast/nightfox.nvim',
        config = function()
            require 'plugins.theme'
        end
    }
end)
