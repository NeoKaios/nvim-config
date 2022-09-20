local nnoremap = require("kaios.utils").nnoremap
local inoremap = require("kaios.utils").inoremap
local vnoremap = require("kaios.utils").vnoremap
local cnoremap = require("kaios.utils").cnoremap
local tnoremap = require("kaios.utils").tnoremap

-- local exprsilent = {expr = true, silent = true}
-- local silent = {silent = true}

-- _noremap("key", "<cmd>command<CR>") to map :command
-- _noremap("key", 'expr', {expr = true, silent = true})
-- to map lua expr

nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

inoremap("kj", "<Esc>")
cnoremap("kj", "<C-c>")
tnoremap("kj", "<C-\\><C-n>")

--Splits movement
nnoremap("<C-l>", "<c-w>l")
nnoremap("<C-h>", "<c-w>h")
nnoremap("<C-j>", "<c-w>j")
nnoremap("<C-k>", "<c-w>k")
-- rotate buffer ignoring nvim-tree window
nnoremap("<C-w><C-w>", "<C-w>r<cmd>lua require('nvim-tree').toggle(false, true)<cr><cmd>lua require('nvim-tree').toggle(false, true)<cr>")
-- nnoremap("<C-up>", "<C-w>+")
-- nnoremap("<C-down>", "<C-w>-")
nnoremap("<C-left>", "<C-w><")
nnoremap("<C-right>", "<C-w>>")


nnoremap("<A-k>", ":m .-2<CR>==")
nnoremap("<A-j>",":m .+1<CR>==")
inoremap("<A-k>", "<Esc>:m .-2<CR>==gi")
inoremap("<A-j>", "<Esc>:m .+1<CR>==gi")

--Markdown
nnoremap("<leader>mp", "<cmd>MarkdownPreviewToggle<CR>")

--Clipboard copy and paste
vnoremap("<leader>y", '"+y')
vnoremap("<leader>p", '"+p')
nnoremap("<leader>p", '"+p')
nnoremap("<leader>y", '"+y')

-- Harpoon
nnoremap("<leader>jj", function() require("harpoon.mark").add_file() end)
nnoremap("<leader>jm", function() require("harpoon.ui").toggle_quick_menu() end)

nnoremap("<leader>jf", function() require("harpoon.ui").nav_file(1) end)
nnoremap("<leader>jd", function() require("harpoon.ui").nav_file(2) end)
nnoremap("<leader>js", function() require("harpoon.ui").nav_file(3) end)
nnoremap("<leader>ja", function() require("harpoon.ui").nav_file(4) end)

-- Telescope & Nvim-tree
nnoremap("<leader>fd", function() require('nvim-tree').focus() end)
nnoremap("<leader>ft", function() require('nvim-tree').toggle(false, true) end)
nnoremap("<leader>ff", function() require('telescope.builtin').find_files() end)
nnoremap("<leader>fg", function() require('telescope.builtin').live_grep() end)
nnoremap("<leader>fb", function() require('telescope.builtin').buffers() end)
nnoremap("<leader>fh", function() require('telescope.builtin').help_tags() end)



