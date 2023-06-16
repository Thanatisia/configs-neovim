-- Configuration
-- for
-- Markdown LSP - marksman

-- Connect to server
--- Setup pyright
require'lspconfig'.marksman.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}
