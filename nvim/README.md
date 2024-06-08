# Neovim Configurations

This is my Neovim configurations

## Getting started using Lua in Neovim

* [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)

## Awesome Neovim

* [awesome-neovim](https://github.com/rockerBOO/awesome-neovim)

## Plugins

* Plugin Manager: [lazy.nvim](https://github.com/folke/lazy.nvim)
* LSP:
  * LSP Configurations: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  * LSP Progress: [fidget.nvim](https://github.com/j-hui/fidget.nvim)
  * Diagnostics:
    * Diagnostics: [trouble.nvim](https://github.com/folke/trouble.nvim)
* Completion: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* Syntax:
  * nvim-treesitter: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  * nvim-treesitter-textobjects: [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
  * nvim-surround: [nvim-surround](https://github.com/kylechui/nvim-surround)
* Snippet: [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* Fuzzy Finder: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* File Explorer: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
* Bars and Lines:
  * Statusline: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  * Tabline: [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
* Icon: [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
* Neovim Lua Development: [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
* Git: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
* Motion: [flash.nvim](https://github.com/folke/flash.nvim)
* Editing Support:
  * nvim-autopairs: [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
  * nvim-treesitter-context: [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
* Formatting:
  * Format Runner: [formatter.nvim](https://github.com/mhartington/formatter.nvim)
* Colorscheme: [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)

## Key Bindings

| Key         | Action                                    |
| ----------- | ----------------------------------------- |
| Meta + e    | Toggle file explorer                      |
| Meta + f    | Format code                               |
| Meta + n    | Goto next tab                             |
| Meta + p    | Goto previous tab                         |
| Meta + d    | Close current tab                         |
| gD          | Declaration                               |
| gd          | Definition                                |
| K           | Hover                                     |
| gi          | Implementation                            |
| Space + D   | Type definition                           |
| Space + rn  | Rename                                    |
| Space + ca  | Code action                               |
| gr          | References                                |
| Leader + xx | Show all diagnostic messages              |
| Leader + ff | Search files                              |
| Leader + fg | Live grep                                 |
| Leader + fb | Search buffer                             |
| Leader + tb | Blame current line                        |
