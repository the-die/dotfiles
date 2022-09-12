require("tokyonight").setup({
    style = "storm",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = "italic",
        keywords = "italic",
        functions = "italic",
        variables = "NONE",
        sidebars = "dark",
        floats = "dark"
    },
    sidebars = {"qf", "vista_kind", "terminal", "packer"},
    day_brightness = 0.3,
    hide_inactive_statusline = false,
    dim_inactive = false,
    lualine_bold = false,

    on_colors = function(colors)
    end,

    on_highlights = function(highlights, colors)
    end
})

vim.cmd [[colorscheme tokyonight]]
