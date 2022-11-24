local lspInstaller = require("nvim-lsp-installer")

local lspConfig = require("lspconfig")


local servers = {"sumneko_lua", "clangd", "ruby", "pyright" }

lspInstaller.setup({ensure_installed = servers})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("plugins/lsp/handlers").on_attach,
        capabilities = require("plugins/lsp/handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "plugins/lsp/serverSettings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspConfig[server].setup(opts)
end
