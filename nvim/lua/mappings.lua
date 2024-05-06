local map = vim.api.nvim_set_keymap
local opts = {
  noremap = true,
  silent = true,
}
local M = {}

M.bufferline = function()
  map('n', '<M-p>', '<CMD>BufferLineCyclePrev<CR>', opts)
  map('n', '<M-n>', '<CMD>BufferLineCycleNext<CR>', opts)
  map('n', '<M-d>', '<CMD>bwipe<CR>', opts)
  map('n', '<M-D>', '<CMD>BufferLinePickClose<CR>', opts)
  map('n', '<M-1>', '<CMD>BufferLineGoToBuffer 1<CR>', opts)
  map('n', '<M-2>', '<CMD>BufferLineGoToBuffer 2<CR>', opts)
  map('n', '<M-3>', '<CMD>BufferLineGoToBuffer 3<CR>', opts)
  map('n', '<M-4>', '<CMD>BufferLineGoToBuffer 4<CR>', opts)
  map('n', '<M-5>', '<CMD>BufferLineGoToBuffer 5<CR>', opts)
  map('n', '<M-6>', '<CMD>BufferLineGoToBuffer 6<CR>', opts)
  map('n', '<M-7>', '<CMD>BufferLineGoToBuffer 7<CR>', opts)
  map('n', '<M-8>', '<CMD>BufferLineGoToBuffer 8<CR>', opts)
  map('n', '<M-9>', '<CMD>BufferLineGoToBuffer 9<CR>', opts)
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
