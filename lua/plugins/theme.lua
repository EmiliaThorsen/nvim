require('base16-colorscheme').setup({ -- modified base16-isotope theme
    base00 = "#000000",
    base01 = "#444444",
    base02 = "#666666",
    base03 = "#888888",
    base04 = "#cccccc",
    base05 = "#dddddd",
    base06 = "#eeeeee",
    base07 = "#ffffff",
    base08 = "#ff0000",
    base09 = "#ff9900",
    base0A = "#cc00ff",
    base0B = "#33ff00",
    base0C = "#00ffff",
    base0D = "#0066ff",
    base0E = "#ff0099",
    base0F = "#3300ff",
})

vim.cmd [[highlight indentBlankLineContextChar guifg=#ffffff gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#ffffff gui=underdouble]]

vim.cmd [[highlight TelescopeBorder         guifg=#ffffff]]

vim.cmd [[highlight TelescopePromptBorder   guifg=#ffffff guibg=#000000]]
vim.cmd [[highlight TelescopePromptTitle    guibg=#000000 guifg=#ffffff]]
vim.cmd [[highlight TelescopePromptNormal   guibg=#000000]]
vim.cmd [[highlight TelescopePromptPrefix   guibg=#000000 guifg=#ffffff]]

vim.cmd [[highlight TelescopeSelection      guibg=#666666 guifg=#ffffff]]

vim.cmd [[highlight TelescopeMatching       guifg=#ff0000]]

vim.cmd [[highlight TelescopeResultsTitle   guibg=#000000 guifg=#ffffff]]
vim.cmd [[highlight TelescopeResultsBorder  guifg=#ffffff]]

vim.cmd [[highlight TelescopePreviewBorder  guifg=#ffffff]]
vim.cmd [[highlight TelescopePreviewTitle   guibg=#000000 guifg=#ffffff]]
