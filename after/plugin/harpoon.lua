local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>jj", mark.add_file)
vim.keymap.set("n", "<leader>jm", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>jf", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>jd", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>js", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>ja", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>jr", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>je", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>jw", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>jq", function() ui.nav_file(8) end)

