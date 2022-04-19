require("packer").startup(function()
    -- packer it self
    use "wbthomason/packer.nvim"

    -- looks
    use "kyazdani42/nvim-web-devicons"
    use "RRethy/nvim-base16"
    use 'nvim-lualine/lualine.nvim'
    use 'goolord/alpha-nvim'

    -- treesitter
    use "nvim-treesitter/nvim-treesitter"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "nvim-lua/lsp-status.nvim"

    -- coq
    use {
        "ms-jpq/coq_nvim",
        branch = "coq",
        event = "InsertEnter",
        run = ":COQdeps",
        requires = {
            { "ms-jpq/coq.artifacts", branch = "artifacts" },
            { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" }
        }
    }

    -- utitlties
    use 'norcalli/nvim-colorizer.lua'
    use 'sunjon/shade.nvim'
    use "lukas-reineke/indent-blankline.nvim"
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
end)
