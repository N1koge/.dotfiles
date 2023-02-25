require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    -- "sumneko_lua",
    "tsserver"
  },
})
require('mason-lspconfig').setup_handlers({function(server_name)
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local opts = {
    capabilities = capabilities,
  }
  require('lspconfig')[server_name].setup(opts)
end})

