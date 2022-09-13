-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

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

  --Git
  --todo
  -- Git worktree
  -- use 'ThePrimeagen/git-worktree.nvim'
  -- Git commands in nvim
  -- use 'tpope/vim-fugitive'
  -- Fugitive-companion to interact with github
  -- use 'tpope/vim-rhubarb'

  -- LSP
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use {'neoclide/coc.nvim', branch= 'release'}

  --QOL
  use 'numToStr/Comment.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "windwp/nvim-autopairs"
  use "folke/which-key.nvim"

  -- Visuals
  use 'folke/tokyonight.nvim'
end)


