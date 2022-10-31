-- lualine ---------------------------
local custom_codedark = require('lualine.themes.codedark')

--more vibrant green
custom_codedark.normal.a.bg = "#20dd20"
custom_codedark.normal.b.fg = "#60bb4e"

require('lualine').setup {
    options = {
        theme = custom_codedark,
        -- section_separators = '',
        component_separators = '',
        extentions = { 'nvim-tree' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    },
}

vim.cmd [[colorscheme nightfox]]
