require('bufferline').setup {
  options = {
    mode = 'buffers',
    numbers = 'ordinal',
    indicator = {
      icon = '*',
      style = 'icon'
    },
    left_trunc_marker = '<',
    right_trunc_marker = '>',
    truncate_names = true,
    diagnostics = 'nvim_lsp',
    offsets = {
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "left",
      separator = true
    },
    color_icons = false,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_buffer_default_icon = false,
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = '{ "|", "|" }',
    always_show_bufferline = true
  }
}
