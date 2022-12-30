local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()

lsp.set_preferences({
    set_lsp_keymaps = false
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gs", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

    vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>j<Tab>", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>j<s-Tab>", vim.diagnostic.goto_prev, opts)
end)
lsp.setup()

-- Deactivating luasnip cmp for markdown files (it causes lag)
local cmp = require('cmp')
cmp.setup.filetype('markdown', {
    sources = cmp.config.sources({}, {
        { name = 'buffer', keyword_length = 3 },
    })
})

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = true,
})
