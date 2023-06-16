-- Configuration
-- for
-- C++ LSP - LLVM clangd

-- Connect to server
--- Setup pyright
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}
