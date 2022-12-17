-- Trim trailing white spaces
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        if vim.bo.filetype == "markdown" then
            vim.cmd([[%s/\(\S\zs\s\|^\s\+\|\s\s\s\+\)$//e]])
        else
            vim.cmd([[%s/\s\+$//e]])
        end
    end,
    group = vim.api.nvim_create_augroup("OnSave", { clear = true})
})
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup("HighlightYank", { }),
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
