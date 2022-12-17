require('Comment').setup()

require('nvim-autopairs').setup()

require('nvim-web-devicons').setup()

require('nvim-surround').setup()

require('gitsigns').setup({
    signcolumn = false,
    numhl = true,
}
)

require('trouble').setup()

-- require('vgit').setup()

require('toggleterm').setup({
    open_mapping = "<c-s>",
    direction='float'
}
)

--Interfer with zR autocommand in treesitter atm, still useful tho
-- require('which-key').setup({
-- layout = {
--     height = { min = 4, max = 500 }, -- min and max height of the columns
--     width = { min = 20, max = 100 }, -- min and max width of the columns
--     spacing = 3, -- spacing between columns
--     align = "left", -- align columns left, center or right
--   },
-- })
