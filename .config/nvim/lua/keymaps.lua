local opts = { noremap = true, silent = true }
local set = vim.keymap.set

-- use <Space> as <leader>
set('', '<Space>', "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal --
-- misc
-- tab nav
set("n", "<C-,>", ":tabnext<CR>", opts)
set("n", "<C-.>", ":tabprev<CR>", opts)
-- window nav
set("n", "<C-h>", "<C-w>h", opts)
set("n", "<C-l>", "<C-w>l", opts)
set("n", "<C-j>", "<C-w>j", opts)
set("n", "<C-k>", "<C-w>k", opts)
---- split window
set("n", "<leader>ss", ":split<CR><C-w>w", opts)
set("n", "<leader>vs", ":vsplit<CR><C-w>w", opts)
---- finder
set("n", "<C-e>", ":NvimTreeToggle<CR>", opts)
local builtin = require('telescope.builtin')
set("n", "<leader>ff", builtin.find_files, opts)
set('n', '<leader>fg', builtin.live_grep, opts)
set('n', '<leader>fb', builtin.buffers, opts)
set('n', '<leader>fh', builtin.help_tags, opts)
set('n', '<leader>fm', builtin.marks, opts)
set('n', '<leader>ft', builtin.treesitter, opts)
set('n', '<leader>fd', ':Telescope diagnostics bufnr=0<CR>', opts)
set('n', '<leader>fr', builtin.lsp_references, opts)
set('n', '<leader>fi', builtin.lsp_implementations, opts)
set('n', '<leader>flg', builtin.git_status, opts)
set('n', '<leader>fe', ':Telescope file_browser<CR>', opts)
-- diagnostics
set('n', '<leader>do', '<cmd> lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_option('updatetime', 500)
local function _open_float()
  vim.diagnostic.open_float({ focusable = false})
end
vim.api.nvim_create_autocmd({'CursorHold'}, {
  callback = _open_float,
})
-- set('n', '<leader>dc', '<cmd> lua vim.lsp.buf.code_action()<CR>', opts)
set('n', '<leader>df', vim.lsp.buf.format, opts)
-- Insert --
-- Visual --
local function _v_set(lhs, rhs, _opts)
  _opts = _opts or opts
  set("v", lhs, rhs, _opts)
end
-- misc
_v_set("<leader>cp", "\"*y")
