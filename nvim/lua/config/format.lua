require('formatter').setup({
  logging = false,
  filetype = {
    rust = { -- rustfmt
      function()
        return {
          exe = 'rustfmt',
          args = { '--emit=stdout' },
          stdin = true,
        }
      end,
    },
    lua = { -- stylua
      function()
        return {
          exe = 'stylua',
          args = {
            '--quote-style AutoPreferSingle --indent-type Spaces --indent-width 2 --column-width 100 -',
          },
          stdin = true,
        }
      end,
    },
    cpp = { -- clang-format
      function()
        return {
          exe = 'clang-format',
          args = {},
          stdin = true,
          cwd = vim.fn.expand('%:p:h'), -- Run clang-format in cwd of the file.
        }
      end,
    },
    c = { -- clang-format
      function()
        return {
          exe = 'clang-format',
          args = {},
          stdin = true,
          cwd = vim.fn.expand('%:p:h'), -- Run clang-format in cwd of the file.
        }
      end,
    },
    python = { -- yapf
      function()
        return {
          exe = 'yapf',
          args = {},
          stdin = true,
        }
      end,
    },
  },
})
