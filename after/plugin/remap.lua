-- local exprsilent = {expr = true, silent = true}
-- local silent = {silent = true}

-- vim.keymap.set("_", "key", "<cmd>command<CR>") to map :command
-- vim.keymap.set("_", "key", 'expr', {expr = true, silent = true}) to map lua expr

-- Save & Quit
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- Esc remaps
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("c", "kj", "<C-c>")
vim.keymap.set("t", "kj", "<C-\\><C-n>")

--Splits movement
vim.keymap.set("n", "<C-l>", "<c-w>l")
vim.keymap.set("n", "<C-h>", "<c-w>h")
vim.keymap.set("n", "<C-j>", "<c-w>j")
vim.keymap.set("n", "<C-k>", "<c-w>k")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>")
-- rotate buffer ignoring nvim-tree window
vim.keymap.set("n", "<C-w><C-w>", "<C-w>r<cmd>lua require('nvim-tree.api').tree.toggle(false, true)<cr><cmd>lua require('nvim-tree.api').tree.toggle(false, true)<cr>")
-- vim.keymap.set("n", "<C-up>", "<C-w>+")
-- vim.keymap.set("n", "<C-down>", "<C-w>-")
vim.keymap.set("n", "<C-left>", "<C-w><")
vim.keymap.set("n", "<C-right>", "<C-w>>")

-- Move lines
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("n", "<A-j>",":m .+1<CR>==")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

--Clipboard copy and paste
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>y", '"+y')

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

if (vim.g.neovide) then
  function changeFont(amount)
    local font = ""
    local size = ""
    for str in string.gmatch(vim.o.guifont, ".*:h") do
      font = str
    end
    for str in string.gmatch(vim.o.guifont, "%d+$") do
      size = str
    end
    vim.o.guifont = font..(size+amount)
  end

  vim.keymap.set("n", "<C-=>", function () changeFont(1) end)
  vim.keymap.set("n", "<C-->", function () changeFont(-1) end)
end
