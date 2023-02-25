local null_ls = require('null-ls')
local sources = {
  null_ls.builtins.diagnostics.cspell.with({
    diagnostic_config = {
      virtual_text = false,
    }
  }),
  null_ls.builtins.code_actions.cspell,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.code_actions.eslint_d,
  -- null_ls.builtins.formatting.prettier_eslint,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.diagnostics.tfsec,
  null_ls.builtins.formatting.terraform_fmt,
  null_ls.builtins.formatting.hclfmt,
  null_ls.builtins.diagnostics.yamllint,
  null_ls.builtins.diagnostics.actionlint
}

null_ls.setup({
  diagnostics_format = "[#{c}] #{m} (#{s})",
  sources = sources,
})

