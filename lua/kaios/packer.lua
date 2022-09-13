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
  -- use "liuchengxu/vim-which-key"

  -- Visuals
  use 'folke/tokyonight.nvim'

  if packer_bootstrap then
	  require'packer'.sync()
  end


end)


