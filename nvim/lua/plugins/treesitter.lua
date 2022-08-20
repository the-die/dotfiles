local filetypes = require'main'.lsp_filetyps

require'nvim-treesitter.configs'.setup {
    ensure_installed = filetypes,
    highlight = {
        enable = true
    }
}
