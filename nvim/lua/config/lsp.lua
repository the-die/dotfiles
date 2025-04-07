-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup({})
lspconfig.clangd.setup({})
lspconfig.rust_analyzer.setup({
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
})
lspconfig.cmake.setup({})
