vim.opt.list = true
vim.opt.termguicolors = true
vim.cmd [[highlight indentBlankLineContextChar guifg=#ffffff gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#ffffff gui=underline]]
require("indent_blankline").setup {
    char = "┆",
    indent_blankline_use_treesitter = true,
    show_current_context = true,
    show_current_context_start = true,
    space_char_blankline = ' ',
    context_char = '┃',
}
