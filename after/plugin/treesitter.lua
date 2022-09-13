require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "rust", "lua"
    },

    highlight = { enable = true, },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

}
require'treesitter-context'.setup()

vim.opt.foldmethod     = 'expr'
vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'

-- Open folds upon entering buffers
vim.api.nvim_create_autocmd(
    {"BufReadPost,FileReadPost"},
    {
        command = "normal zR",
        group = vim.api.nvim_create_augroup("treesitter-fold", { clear = true})
    }
)
