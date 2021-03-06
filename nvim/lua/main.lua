-- https://neovim.io/doc/user/options.html
vim.cmd 'syntax enable'
vim.cmd 'filetype indent on'

vim.o.number = true
vim.o.ruler = true
vim.o.termguicolors = true
vim.o.laststatus = 2
vim.o.showtabline = 2
vim.o.cursorline = true
vim.o.pumheight = 20
vim.o.showmode = true
vim.o.colorcolumn = '120'

vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noselect'

vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.expandtab = true
vim.o.smarttab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

return {
    lsp_filetypes = {'c', 'cpp', 'rust', 'python'}
}
