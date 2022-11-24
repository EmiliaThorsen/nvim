local keymap = vim.api.nvim_set_keymap
local noremap = { noremap = true }

local function nkeymap(key, oldkey)
    keymap("n", key, oldkey, noremap)
end


local function map(key, oldkey)
    keymap("", key, oldkey, noremap)
end


-- moving with ctrl hjkl
map("c-j", "<C-w><Down>")
map("<C-k>", "<C-w><Up>")
map("<C-h>", "<C-w><Left>")
map("C-l", "<C-w><Right>")

-- resizing altgr hjkl
nkeymap("ˀ", ":resize -2<CR>")
nkeymap("ĸ", ":resize +2<CR>")
nkeymap("ħ", ":vertical resize -2<CR>")
nkeymap("ł", ":vertical resize +2<CR>")
