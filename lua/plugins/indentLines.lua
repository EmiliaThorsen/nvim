vim.opt.list = true
vim.cmd [[highlight indentBlankLineContextChar guifg=#ffffff gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#00FF00 gui=underline]]
require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true
}
