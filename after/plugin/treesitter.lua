require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "help", "rust", "lua", "php", "javascript"
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}
require 'treesitter-context'.setup()

vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
-- Open folds upon entering buffers
vim.api.nvim_create_autocmd(
    { "BufReadPost,FileReadPost" },
    {
        command = "normal zR",
        group = vim.api.nvim_create_augroup("treesitter-fold", { clear = true })
    }
)
