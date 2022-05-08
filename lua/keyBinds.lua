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


-- LSP
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('ga', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('gR', ':lua vim.lsp.buf.rename()<cr>')
