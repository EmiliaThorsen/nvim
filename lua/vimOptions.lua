local options = {
    expandtab = true,
    shiftwidth = 4,
    softtabstop = 4,
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
    foldenable = false,
    number = true,
    relativenumber = true,
    encoding = "utf-8",
    splitbelow = true,
    splitright = false,
    clipboard = "unnamedplus",
    showmode = false,
    termguicolors = true,
    undofile = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
