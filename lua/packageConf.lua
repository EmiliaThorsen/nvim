-- start menu
require("alpha").setup(require("alpha.themes.startify").opts)
local startify = require("alpha.themes.startify")
startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
startify.section.bottom_buttons.val = {
   startify.button("c", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
   startify.button("q", "quit nvim", ":qa<cr>"),
}

-- theme
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

-- status line
require("lualine").setup {
    options = {
        theme = "base16",
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_z = {"location"}
    }
}

-- treesitter
local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = "all",
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}

-- LSP
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim', 'use' }
                }
            }
        }
    }
    server:setup(opts)
end)

-- coq
vim.g.coq_settings = {
    ["auto_start"] = "shut-up",
    ["keymap"] = {
        ["pre_select"] = true
    },
    ["display"] = {
        ["pum"] = {
            ["kind_context"] = {"", ""},
            ["source_context"] = {"", ""}
        },
        ["preview"] = {
            ["border"] = "single", -- {
              --  {"", "NormalFloat"},
              --  {"", "NormalFloat"},
              --  {"", "NormalFloat"},
              --  {" ", "NormalFloat"},
              --  {"", "NormalFloat"},
              --  {"", "NormalFloat"},
              --  {"", "NormalFloat"},
              --  {" ", "NormalFloat"}
            --},
            ["positions"] = { ["north"] = 2, ["south"] = 3, ["west"] = 4, ["east"] = 1 }
        }
    }
}

-- hex color code highlight
require'colorizer'.setup()

-- unfocused buffer shader
require'shade'.setup({overlay_opacity = 50})

-- white space and pair shower
vim.opt.list = true
vim.cmd([[highlight indentBlankLineContextChar guifg=#ffffff gui=nocombine]])
vim.cmd([[highlight IndentBlanklineContextStart guisp=#00FF00 gui=underline]])
require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true
}

-- gitgutter
require('gitsigns').setup()
