local filetypes = require'main'.lsp_filetypes

require'nvim-treesitter.configs'.setup {
    ensure_installed = filetypes,
    highlight = {
        enable = true
    }
}
