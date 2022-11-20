require 'lspconfig'.tsserver.setup {}

require 'lspconfig'.sumneko_lua.setup {
  cmd = { "/home/ramonmello/lua/lua-language-server/bin/lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
}
