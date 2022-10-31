local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use("nvim-lua/plenary.nvim")

    use 'ap/vim-css-color'

    --Nav
    use("nvim-telescope/telescope.nvim")
    use("ThePrimeagen/harpoon")
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Termial
    use 'akinsho/toggleterm.nvim'

    --Git
    use { 'lewis6991/gitsigns.nvim' }
    use { 'tanvirtin/vgit.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'nvim-treesitter/nvim-treesitter-context'
    use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
    use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp' } }
    use { 'L3MON4D3/LuaSnip', requires = { 'saadparwaiz1/cmp_luasnip' } }

    --QOL
    use 'numToStr/Comment.nvim'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use "windwp/nvim-autopairs"
    use "folke/which-key.nvim"
    use "mg979/vim-visual-multi"
    use "kylechui/nvim-surround"

    -- Visuals
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'

    if packer_bootstrap then
        require 'packer'.sync()
    end

end)

--[[ Other plugins
  use "ellisonleao/glow.nvim" -- markdown preview in neovim
  use 'gen740/SmoothCursor.nvim' -- smooth cursor scrolling in signcol

  use 'kdheepak/lazygit.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
]]
