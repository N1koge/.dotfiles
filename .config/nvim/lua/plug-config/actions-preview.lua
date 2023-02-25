local p = require('actions-preview');

local cfg = {
  backend = { "telescope", "nui", "builtin" },
  telescope = {
    layout_strategy = "vertical",
    layout_config = {
      prompt_position = "top",
    },
  },
}
p.setup(cfg)

local opts = { noremap = true, silent = true }
vim.keymap.set({"n", "v"}, "<leader>dc", p.code_actions, opts)
