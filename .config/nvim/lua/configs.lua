-- plugins --
require('plug-config.mason');
require('plug-config.telescope');
require('plug-config.lualine');
require('plug-config.null-ls');
require('plug-config.toggleterm');
require('plug-config.indent-blankline');
require('plug-config.cmp');
require('plug-config.treesitter');
require('plug-config.comment');
require('plug-config.marks');
require('plug-config.lsp_signature');
require('plug-config.scrollbar');
require('plug-config.dressing');
require('plug-config.actions-preview');
require('plug-config.lightbulb');
require('plug-config.hop');
require('plug-config.noice');

-- colorscheme --
-- nightfox
require('nightfox').setup({
  options = {
    transparent = true
  }
})
