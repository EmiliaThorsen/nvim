local keymap = vim.api.nvim_set_keymap
local noremap = { noremap = true }

local function nkeymap(key, oldkey)
    keymap("n", key, oldkey, noremap)
end


local function map(key, oldkey)
    keymap("", key, oldkey, noremap)
end


-- I like my arrow keys ):<
map("å", "p")
map("ä", "l")
map("p", "k")
map("ö", "j")
map("l", "h")


-- moving with ctrl arrow key
map(";", "<C-w><Down>")
map("<C-p>", "<C-w><Up>")
map("<C-l>", "<C-w><Left>")
map("'", "<C-w><Right>")

-- resizing altgr arrow keys
nkeymap("ø", ":resize -2<CR>")
nkeymap("þ", ":resize +2<CR>")
nkeymap("ł", ":vertical resize -2<CR>")
nkeymap("æ", ":vertical resize +2<CR>")
