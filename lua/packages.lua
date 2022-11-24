local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function()
    -- packer it self
    use "wbthomason/packer.nvim"

    -- commonly used dependencies
    use 'nvim-lua/plenary.nvim'

    -- looks

    -- icons for stuff
    use "kyazdani42/nvim-web-devicons"
    -- theme
    use "RRethy/nvim-base16"
    -- status line
    use 'nvim-lualine/lualine.nvim'
    -- start menu
    use 'goolord/alpha-nvim'

    -- coding tools

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "nvim-lua/lsp-status.nvim"

    --cmp
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"

    -- luasnip
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- utitlties

    -- telescope
    use 'nvim-telescope/telescope.nvim'
    -- better t and f
    use 'unblevable/quick-scope'
    -- hex code preview
    use 'norcalli/nvim-colorizer.lua'
    -- darken non focused splits
    use 'sunjon/shade.nvim'
    -- indent lines
    use "lukas-reineke/indent-blankline.nvim"
    -- git sidebar
    use 'lewis6991/gitsigns.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- configurations
require("plugins/treesitter")
require("plugins/theme")
require("plugins/startMenu")
require("plugins/statusLine")
require("plugins/startMenu")
require("plugins/cmp")
require("plugins/lsp")
require("plugins/telescope")
require('plugins/indentLines')
require("plugins/quickScope")

require('gitsigns').setup()
require('colorizer').setup()
require('shade').setup({overlay_opacity = 40})
