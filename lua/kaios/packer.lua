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
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}
  -- use {
  --     "jay-babu/mason-null-ls.nvim",
  --     requires = {
  --         "williamboman/mason.nvim",
  --         "nvimtools/none-ls.nvim",
  --     },
  -- }

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
  use "windwp/nvim-ts-autotag"
  use 'folke/zen-mode.nvim'
  use({ "asiryk/auto-hlsearch.nvim", tag = "1.1.0" })

  -- Visuals
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'Eandrju/cellular-automaton.nvim'

  if packer_bootstrap then
      require 'packer'.sync()
  end

end)

--[[ Other plugins
use 'whonore/Coqtail'
use "ellisonleao/glow.nvim" -- markdown preview in neovim
use 'gen740/SmoothCursor.nvim' -- smooth cursor scrolling in signcol

use 'kdheepak/lazygit.nvim'
use 'tpope/vim-fugitive'
use 'tpope/vim-rhubarb'
]]
