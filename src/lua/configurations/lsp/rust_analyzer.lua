-- Configuration
-- for
-- Rust LSP - rust_analyzer

-- Connect to server
--- Setup rust_analyzer
require'lspconfig'.rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}

