local nnoremap = require("kaios.utils").nnoremap
local inoremap = require("kaios.utils").inoremap
local vnoremap = require("kaios.utils").vnoremap

local exprsilent = {expr = true, silent = true}
local silent = {silent = true}
--Remaps

inoremap("<C-space>", "coc#refresh()", exprsilent)
inoremap("<CR>", 'coc#pum#visible() ? coc#pum#confirm() : v:lua.MPairs.completion_confirm()', exprsilent)
inoremap("<tab>", 'coc#pum#visible() ? coc#pum#next(1): "<tab>"', exprsilent )
inoremap("<s-tab>", 'coc#pum#visible() ? coc#pum#prev(1): "<tab>"', exprsilent )
nnoremap("<leader>cd", ":call CocActionAsync('jumpDefinition')<CR>", silent)
nnoremap("<leader>ch", ":call CocActionAsync('doHover')<CR>", silent)

vim.opt.signcolumn = "number"

vim.g.coc_global_extentions = {
    'coc-rust-analyzer',
    'coc-json',
}
