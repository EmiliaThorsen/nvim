local telescope = require('telescope')

telescope.setup{
    defaults = {
        scroll_strategy = "limit",
        borderchars = {"-", "|", "-", "|", "+", "+", "+", "+"},
        prewiev = {
            treesitter = true,
            msg_bg_fillchar = "#"
        }
    }
}
