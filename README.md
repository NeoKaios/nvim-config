# :rocket: My Nvim config

My Nvim config files, everything in lua.

Packer as Plugin Manager

## Install

- Packer : will require a buggy first startup,
past errors Packer will launch plugins installation automatically

## :link: Main Plugins

- Nvim-tree
- Tree-sitter
- Lualine
- Coc
- Telescope
- Harpoon

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
- `<leader>jf` Harpoon Navigate file 1 (`d` = 2, `s` = 3, `a` = 4)
- `<leader>mp` to Open Markdown Preview
- `<leader>ch` Coc doHover
- `<leader>cd` Coc jumpDefinition

## :robot: Autocommands

- Remove trailing white spaces on save
