local M = {}

local function bind(mode, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        local options = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(mode, lhs, rhs, options)
    end
end

M.nmap = bind("n", { noremap = false })
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")
M.cnoremap = bind("c")
M.tnoremap = bind("t")

return M
