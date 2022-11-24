vim.opt.list = true
require("indent_blankline").setup {
    char = "┆",
    indent_blankline_use_treesitter = true,
    show_current_context = true,
    show_current_context_start = true,
    space_char_blankline = ' ',
    context_char = '┃',
}
