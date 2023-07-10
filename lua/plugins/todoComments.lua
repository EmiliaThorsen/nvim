require("todo-comments").setup({
    keywords = {
        FIX  = { icon = "F", color = "#FF0000", alt = { "FIXME", "BUG", "ISSUE" }},
        TODO = { icon = "T", color = "#FFFF00" },
        WARN = { icon = "!", color = "#FFAA00", alt = { "WARNING"}},
        PERF = { icon = "P", color = "#FFAA00", alt = { "PERFORMANCE", "OPTIMIZE" }},
        NOTE = { icon = "N", color = "#888888", alt = { "INFO" }},
    }
})
