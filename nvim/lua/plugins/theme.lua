require("github-theme").setup({
    theme_style = "dimmed",
    function_style = "italic",
    sidebars = {"qf", "vista_kind", "terminal", "packer"},

    colors = {
        hint = "orange",
        error = "#ff0000"
    },

    overrides = function(c)
        return {
            htmlTag = {
                fg = c.red,
                bg = "#282c34",
                sp = c.hint,
                style = "underline"
            },
            DiagnosticHint = {
                link = "LspDiagnosticsDefaultHint"
            },
            TSField = {}
        }
    end
})
