# :rocket: My Nvim config

My [Neovim](https://neovim.io) config files, everything in lua.

Packer as Plugin Manager

## Install

- [Packer](https://github.com/wbthomason/packer.nvim) : will require a buggy first startup,
past errors Packer will launch plugins installation automatically

## :link: Main Plugins

- [Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Lsp-native](https://neovim.io/doc/user/lsp.html), [lspconfig](https://github.com/neovim/nvim-lspconfig) and [Mason](https://github.com/williamboman/mason.nvim)
- [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Harpoon](https://github.com/ThePrimeagen/harpoon)

## :fire: Main keymaps

`<leader>` = `<Space>`

### Insert

- `kj` to `<Esc>`
- `<A-j>`: move line down
- `<A-k>`: move line up

### Normal

- `<leader>w` to `:w`: write buffer
- `<leader>q` to `:q`: quit
- `<C-h|j|k|l>` to `<C-w>h|j|k|l`: switch buffers
- `<C-w><C-w>` to `<C-w>r`: rotate buffers
- `<leader>p` to `"+p`: copy to Clipboard
- `<leader>y` to `"+y`: yank to Clipboard
- `<A-j>`: move line down
- `<A-k>`: move line up

#### Plugin specific

- `<leader>fd` Focus Nvim-tree
- `<leader>ft` Toggle Nvim-tree
- `<leader>ff` Telescope fuzzy finder
- `<leader>fg` Telescope live_grep
- `<leader>fb` Telescope buffers
- `<leader>fh` Telescope help_tags
- `<leader>jj` Harpoon Add file
- `<leader>jf` Harpoon Navigate file 1 (`d`=2, `s`=3, `a`=4)
- `<leader>mp` to Open Markdown Preview
- `<leader>rn` to Rename
- `<leader>ca` to Code Action
- `gd` to Goto Definition
- `gi` to Goto Implementation
- `gr` to Goto Reference
- `<leader>ds` to Show Document Symbols
- `K` to Hover Documentation
- `<C-s>` to Toogle terminal
- `:Trouble` to Toogle diagnostics quickfix window

## :robot: Autocommands

- Remove trailing white spaces on save
