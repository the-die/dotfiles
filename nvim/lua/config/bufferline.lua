require('bufferline').setup({
  options = {
    mode = 'buffers', -- set to 'tabs' to only show tabpages instead
    themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
    numbers = 'ordinal',
    close_command = 'bdelete! %d',       -- can be a string | function, see "Mouse actions"
    right_mouse_command = 'bdelete! %d', -- can be a string | function, see "Mouse actions"
    left_mouse_command = 'buffer %d',    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    indicator = {
      icon = '*', -- this should be omitted if indicator style is not 'icon'
      style = 'icon'
    },
    buffer_close_icon = '[x]',
    modified_icon = 'M',
    close_icon = '[X]',
    left_trunc_marker = '<',
    right_trunc_marker = '>',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,
    offsets = {
      filetype = 'NvimTree',
      text = 'File Explorer',
      text_align = 'left',
      separator = true
    },
    color_icons = false,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    separator_style = {'|', '|'},
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
    }
  }
})
