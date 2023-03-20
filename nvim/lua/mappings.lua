local map = vim.api.nvim_set_keymap
local opts = {
  noremap = true,
  silent = true,
}
local M = {}

M.lspsaga = function()
  map('n', 'gh', '<CMD>Lspsaga lsp_finder<CR>', opts)
  map('n', '<leader>ca', '<CMD>Lspsaga code_action<CR>', opts)
  map('v', '<leader>ca', '<CMD>Lspsaga code_action<CR>', opts)
  map('n', 'gr', '<CMD>Lspsaga rename<CR>', opts)
  map('n', 'gd', '<CMD>Lspsaga peek_definition<CR>', opts)
  map('n', 'gt', '<cmd>Lspsaga peek_type_definition<CR>', opts)
  map('n', '<leader>o', '<cmd>Lspsaga outline<CR>', opts)
  map('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
  map('n', '<M-t>', '<CMD>Lspsaga term_toggle<CR>', opts)
  map('t', '<M-t>', '<CMD>Lspsaga term_toggle<CR>', opts)
end

M.bufferline = function()
  map('n', '<M-p>', '<CMD>BufferLineCyclePrev<CR>', opts)
  map('n', '<M-n>', '<CMD>BufferLineCycleNext<CR>', opts)
  map('n', '<M-d>', '<CMD>bwipe<CR>', opts)
end

M.nvimtree = function()
  map('n', '<M-e>', '<CMD>NvimTreeToggle<CR>', opts)
end

M.trouble = function()
  map('n', '<LEADER>xx', '<CMD>TroubleToggle<CR>', opts)
end

M.telescope = function()
  map('n', '<LEADER>ff', '<CMD>Telescope find_files<CR>', opts)
  map('n', '<LEADER>fg', '<CMD>Telescope live_grep<CR>', opts)
  map('n', '<LEADER>fb', '<CMD>Telescope buffers<CR>', opts)
end

M.formatter = function()
  map('n', '<M-f>', '<CMD>Format<CR>', opts)
end

return M
