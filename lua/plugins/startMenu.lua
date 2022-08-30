require("alpha").setup(require("alpha.themes.startify").opts)
local startify = require("alpha.themes.startify")
startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
startify.section.bottom_buttons.val = {
   startify.button("c", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
   startify.button("q", "quit nvim", ":qa<cr>"),
}
