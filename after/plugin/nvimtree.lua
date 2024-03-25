local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  api.config.mappings.default_on_attach(bufnr)
  -- custom mappings
  vim.keymap.set('n', '<leader>cd', api.tree.change_root_to_node,        opts('Change directory'))
end

require('nvim-tree').setup({
    on_attach = my_on_attach,
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
vim.keymap.set("n", "<leader>fD",
function()
    require('nvim-tree.api').tree.open({ find_file = true })
end
)
-- focus and dont find
vim.keymap.set("n", "<leader>fd", function() require('nvim-tree.api').tree.focus() end)
-- toggle without focusing
vim.keymap.set("n", "<leader>ft", function() require('nvim-tree.api').tree.toggle({ focus = false}) end)

-- open tree on VimEnter
local function open_nvim_tree(data)
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  if not real_file and not no_name then
    return
  end
  require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })

end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
