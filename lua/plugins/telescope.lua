require('telescope').setup {
    defaults = {
        scroll_strategy = "limit",
        borderchars = {"-", "|", "-", "|", "+", "+", "+", "+"},
        prewiev = {
            treesitter = true,
            msg_bg_fillchar = "#"
        }
    },
    pickers = {
        
    }
}
