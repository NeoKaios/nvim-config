-- Nvim-tree --------------------------
-- local nt_api = require("nvim-tree.api")

require('nvim-tree').setup({
  open_on_setup = true,
  open_on_setup_file = true,
  hijack_cursor = true,
  diagnostics = {
    enable = true,
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "all",
    indent_markers = { 
      enable = true,
    },
  },
})



require('Comment').setup()

require('nvim-autopairs').setup()

require('nvim-web-devicons').setup()

