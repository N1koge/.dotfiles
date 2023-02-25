require('toggleterm').setup {}

local opts = {
  noremap = true,
  silent  = true,
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = 'float',
  hidden = true,
})
local function _lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set(
  "n",
  "<leader>lg",
  _lazygit_toggle,
  opts
)

local sh = Terminal:new({
  cmd = "/bin/zsh",
  direction = 'float',
  hiddne = true,
  on_open = function(term)
    vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', "<cmd>close<CR>", opts)
  end,
})
local function _sh_toggle()
  sh:toggle()
end

vim.keymap.set("n", "<leader>sh", _sh_toggle, opts)

