require('nvim-tree').setup({
    hijack_cursor = true,
    diagnostics = {
        enable = true,
    },
    git = {
        ignore = false,
      },
    renderer = {
        group_empty = true,
        highlight_opened_files = "all",
        indent_markers = {
            enable = true,
        },
    },
})

-- focus and find file
vim.keymap.set("n", "<leader>fd",
function()
    require('nvim-tree').toggle(false, false)
    require('nvim-tree').toggle(true, false)
end
)
vim.keymap.set("n", "<leader>ft", function() require('nvim-tree').toggle(false, true) end)

-- open tree on VimEnter
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function()
    require("nvim-tree").toggle(true, false)
end
 })
