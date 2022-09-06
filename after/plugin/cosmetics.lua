-- lualine ---------------------------
local custom_codedark = require('lualine.themes.codedark')

--more vibrant green
custom_codedark.normal.a.bg = "#20dd20"
local darkblue = "#303050"
custom_codedark.normal.c.bg = darkblue
custom_codedark.insert.c.bg = darkblue

local darkerblue = "#200020"
custom_codedark.normal.b.bg = darkerblue
custom_codedark.insert.b.bg = darkerblue
custom_codedark.visual.b.bg = darkerblue
custom_codedark.replace.b.bg = darkerblue

custom_codedark.normal.b.fg = "#60bb4e"

require('lualine').setup {
  options = {
    theme = custom_codedark,
    -- section_separators = '',
    component_separators = '',
    extentions = { 'nvim-tree' },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },
}


vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_colors = { fg_gutter = '#7766bb', bg = '#202030'}
-- vim.g.tokyonight_style = 'night'
vim.cmd[[colorscheme tokyonight]]
