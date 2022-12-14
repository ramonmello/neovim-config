local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  vim.notify("null-ls not installed", vim.log.levels.ERROR)
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettierd,
    formatting.eslint_d,
    diagnostics.eslint_d,
    code_actions.refactoring,
    formatting.dart_format,
    formatting.gofmt,
    formatting.goimports,
    formatting.goimports_reviser
  }
})
