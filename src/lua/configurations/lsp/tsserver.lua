-- Configuration
-- for
-- Javascript/Typescript LSP - tsserver
-- 
-- Dependencies:
--  - node/npm
--      - typescript
--      - typescript-language-server
--
--      npm install -D typescript typescript-language-server
--
-- Pre-Requisites:
--  - tsconfig.json/jsconfig.json at the root of the project
--  - Add '[project-root-directory]/node_modules/.bin' to the PATH system environment variable

-- Prepare other settings
local table = {
  init_options = {
      preferences = {
          -- Other preferences...
          importModuleSpecifierPreference = 'relative',
          importModuleSpecifierEnding = 'minimal',
      }
  },
  settings = {
  }
}

-- Connect to server
--- Setup
-- require'lspconfig'.sumneko_lua.setup {
require'lspconfig'.tsserver.setup {
  capabilities = capabilities,
  on_attach = default_attach,
  table,
}

