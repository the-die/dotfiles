local filetypes = require'main'.lsp_filetypes

return {{
    "nvim-lua/plenary.nvim",
    lazy = true
}, {
    "nvim-tree/nvim-web-devicons",
    lazy = true
}, {
    'williamboman/mason.nvim',
    config = function()
        require('mason').setup()
    end
}, {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    init = function()
        require('mappings').telescope()
    end
}, {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require('nvim-tree').setup {}
    end,
    init = function()
        require('mappings').nvimtree()
    end
}, {
    'neovim/nvim-lspconfig',
    ft = filetypes,
    config = function()
        require('config.lsp')
    end
}, {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    init = function()
        require'mappings'.lspsaga()
    end,
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {{"nvim-tree/nvim-web-devicons"}, -- Please make sure you install markdown and markdown_inline parser
    {"nvim-treesitter/nvim-treesitter"}}
}, {
    'mhartington/formatter.nvim',
    ft = filetypes,
    cmd = 'Format',
    init = function()
        require'mappings'.formatter()
    end,
    config = function()
        require 'config.format'
    end
}, {
    'j-hui/fidget.nvim',
    config = function()
        require'fidget'.setup {
            text = {
                spinner = 'dots_negative'
            }
        }
    end
}, {
    'ray-x/lsp_signature.nvim',
    config = function()
        require 'config.lsp_signature'
    end
}, {
    'akinsho/bufferline.nvim',
    init = function()
        require'mappings'.bufferline()
    end,
    config = function()
        require 'config.bufferline'
    end
}, {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
        require 'config.cmp'
    end
}, {'L3MON4D3/LuaSnip'}, {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-path'},

        {'hrsh7th/cmp-buffer'}, {
    'nvim-lualine/lualine.nvim',
    config = function()
        require 'config.lualine'
    end
}, {
    'nvim-treesitter/nvim-treesitter',
    ft = filetypes,
    build = ':TSUpdate',
    event = 'BufRead',
    config = function()
        require 'config.nvim-treesitter'
    end
}, {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
        require 'config.nvim-treesitter-context'
    end
}, {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter/nvim-treesitter'
}, {
    'kylechui/nvim-surround',
    version = '*', --  for stability; omit to  `main` branch for the latest features
    config = function()
        require('nvim-surround').setup({
            -- Configuration here, or leave empty to  defaults
        })
    end
}, {
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup {}
    end
}, {
    'folke/trouble.nvim',
    init = function()
        require'mappings'.trouble()
    end,
    config = function()
        require 'config.trouble'
    end
}, {
    'lukas-reineke/indent-blankline.nvim',
    lazy = false,
    config = function()
        require 'config.indent'
    end
}, {
    'ggandor/leap.nvim',
    config = function()
        require'leap'.add_default_mappings()
    end
}, {
    'EdenEast/nightfox.nvim',
    lazy = false,
    config = function()
        require 'config.theme'
    end
}}
