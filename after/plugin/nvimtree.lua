require('nvim-tree').setup({
    open_on_setup = true,
    open_on_setup_file = true,
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

vim.keymap.set("n", "<leader>fd", function() require('nvim-tree').focus() end)
vim.keymap.set("n", "<leader>ft", function() require('nvim-tree').toggle(false, true) end)
