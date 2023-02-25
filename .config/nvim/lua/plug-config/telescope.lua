local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<A-v>'] = actions.select_vertical
      },
      n = {
        ['<A-v>'] = actions.select_vertical
      }
    },
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
    }
  }
})
require('telescope').load_extension('file_browser')

local function telescopeHighlight()
  vim.api.nvim_set_hl(0, "TelescopeBorder", {link = "TelescopeNormal"})
end

vim.api.nvim_create_autocmd({'VimEnter'}, {
  callback = telescopeHighlight
})

local themes = {}

function themes.get_code_actions_preview(opts)
  opts = opts or {}
  local theme_opts = {}

  return vim.tbl_deep_extend("force", theme_opts, opts)
end

return themes
