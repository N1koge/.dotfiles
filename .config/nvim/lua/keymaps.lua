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
set("n", "<leader>ff", ':Telescope find_files<CR>', opts)
set('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
set('n', '<leader>fb', ':Telescope buffers<CR>', opts)
set('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
set('n', '<leader>fm', ':Telescope marks<CR>', opts)
set('n', '<leader>ft', ':Telescope treesitter<CR>', opts)
set('n', '<leader>fd', ':Telescope diagnostics bufnr=0<CR>', opts)
set('n', '<leader>fr', ':Telescope lsp_references<CR>', opts)
set('n', '<leader>fi', ':Telescope lsp_implementations<CR>', opts)
set('n', '<leader>flgs', ':Telescope git_status<CR>', opts)
set('n', '<leader>flgb', ':Telescope git_bcommits<CR>', opts)
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
