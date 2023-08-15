local filetypes = require('main').lsp_filetypes

return {
  {
    'neovim/nvim-lspconfig',
    ft = filetypes,
    config = function()
      require('config.lsp')
    end
  },

  {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('config.lsp_signature')
    end
  },

  {
    'j-hui/fidget.nvim',
    tag = "legacy",
    event = "LspAttach",
    config = function()
      require('config.fidget')
    end
  },

  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({})
    end
  },

  {
    'folke/trouble.nvim',
    init = function()
      require('mappings').trouble()
    end,
    config = function()
      require('config.trouble')
    end,
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      require('config.cmp')
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip'
    }
  },

  {'hrsh7th/cmp-nvim-lsp'},

  {'hrsh7th/cmp-path'},

  {'hrsh7th/cmp-buffer'},

  {
    'nvim-treesitter/nvim-treesitter',
    ft = filetypes,
    build = ':TSUpdate',
    event = {'BufReadPost', 'BufNewFile'},
    config = function()
      require('config.nvim-treesitter')
    end
  },

  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter/nvim-treesitter'
  },

  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require('nvim-surround').setup({
        -- Configuration here, or leave empty to  defaults
      })
    end
  },

  {'L3MON4D3/LuaSnip'},

  {'saadparwaiz1/cmp_luasnip'},

  {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    init = function()
      require('mappings').telescope()
    end
  },

  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({})
    end,
    init = function()
      require('mappings').nvimtree()
    end
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('config.lualine')
    end
  },

  {
    'akinsho/bufferline.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    init = function()
      require('mappings').bufferline()
    end,
    config = function()
      require('config.bufferline')
    end
  },

  {
    'nvim-tree/nvim-web-devicons',
    lazy = true
  },

  {
    'nvim-lua/plenary.nvim',
    lazy = true
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns')
    end
  },

  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  },

  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({})
    end
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('config.nvim-treesitter-context')
    end
  },

  {
    'mhartington/formatter.nvim',
    ft = filetypes,
    cmd = 'Format',
    init = function()
      require('mappings').formatter()
    end,
    config = function()
      require('config.format')
    end
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    lazy = false,
    config = function()
      require('config.indent')
    end
  },

  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('config.theme')
    end
  }
}
