vim.api.nvim_create_autocmd({"BufNewFile","BufRead"}, {
    command = "setfiletype puml",
    pattern = "*.puml", 
    })

vim.g.mkdp_filetypes = {'markdown', 'puml'}

