-- Configuration
-- for
-- lua LSP - lua-language-server

-- Prepare other settings
local settings_table = {
    Lua = {
        runtime = {
            version = "LuaJIT",
        },
        diagnostics = {
            globals = {'vim'},
        },
        workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            -- {
            --    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            --    [vim.fn.stdpath("config") .. "/lua"] = true,
            -- },
            checkThirdParty = false, -- Important: This will stop lua-language-server from prompting for luv (Lunarvim)
        }
    }
}

-- Connect to server
--- Setup
-- require'lspconfig'.sumneko_lua.setup {
require'lspconfig'.lua_ls.setup {
  capabilities = capabilities,
  on_attach = default_attach,
  settings = settings_table,
}

