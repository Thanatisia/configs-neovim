-- Configuration
-- for
-- lua LSP - lua-language-server

-- Prepare other settings
local table = {
  settings = {
    Lua = {
        diagnostics = {
            globals = {'vim'},
        },
        workspace = {
            library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
            }
        }
    }
  }
}

-- Connect to server
--- Setup
-- require'lspconfig'.sumneko_lua.setup {
require'lspconfig'.lua_ls.setup {
  capabilities = capabilities,
  on_attach = default_attach,
  table,
}
