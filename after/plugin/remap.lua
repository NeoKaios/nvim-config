local nnoremap = require("kaios.utils").nnoremap
local inoremap = require("kaios.utils").inoremap
local vnoremap = require("kaios.utils").vnoremap

-- local nt_api = require("nvim-tree.api")

-- _noremap("key", "<cmd>command<CR>") to map :command
-- _noremap("key", 'expr', {expr = true, silent = true})
-- to map lua expr

nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

inoremap("kj", "<Esc>")

--Splits movement
nnoremap("<C-l>", "<c-w>l")
nnoremap("<C-h>", "<c-w>h")
nnoremap("<C-j>", "<c-w>j")
nnoremap("<C-k>", "<c-w>k")
nnoremap("<C-up>", "<C-w>+")
nnoremap("<C-down>", "<C-w>-")
nnoremap("<C-left>", "<C-w><")
nnoremap("<C-right>", "<C-w>>")


nnoremap("<leader>f", ":NvimTreeFocus<CR>")
-- nnoremap("<leader>t", ":NvimTreeToggle<CR>")
-- Toggle without focus
nnoremap("<leader>t", ":lua require('nvim-tree').toggle(false, true)<CR>")

--Markdown
nnoremap("<leader>mp", "<cmd>MarkdownPreviewToggle<CR>")

--Clipboard copy and paste
vnoremap("<leader>y", '"+y')
vnoremap("<leader>p", '"+p')
nnoremap("<leader>p", '"+p')
nnoremap("<leader>y", '"+y')




