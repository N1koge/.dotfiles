local options = {
  mouse = 'a',
  splitright = true,
  showtabline = 2,
  ignorecase = true,
  smartcase = true,
  autoindent = true,
  smartindent = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = 'yes',
  scrolloff = 8,
  sidescrolloff = 8,
  foldenable = false,
  foldmethod = 'expr',
  foldexpr = 'nvim_treesitter#foldexpr()',
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
