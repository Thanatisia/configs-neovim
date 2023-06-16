-- Configuration
-- for
-- lua LSP - lua-language-server

-- Connect to server
--- Setup
-- require'lspconfig'.sumneko_lua.setup {
require'lspconfig'.lua_ls.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}
