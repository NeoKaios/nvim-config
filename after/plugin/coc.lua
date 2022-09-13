local nnoremap = require("kaios.utils").nnoremap
local inoremap = require("kaios.utils").inoremap
local vnoremap = require("kaios.utils").vnoremap

--Remaps

nnoremap("<leader>gd", ":call CocActionAsync('jumpDefinition')<CR>")
inoremap("<C-space>", "coc#refresh()", {expr = true, silent = true})
inoremap("<CR>", 'coc#pum#visible() ? coc#pum#confirm() : v:lua.MPairs.completion_confirm()',{expr = true, silent = true} )
inoremap("<tab>", 'coc#pum#visible() ? coc#pum#next(1): "<tab>"',{expr = true, silent = true} )
inoremap("<s-tab>", 'coc#pum#visible() ? coc#pum#prev(1): "<tab>"',{expr = true, silent = true} )

vim.opt.signcolumn = "number"

vim.g.coc_global_extentions = {
    'coc-rust-analyzer',
    'coc-json',
}
