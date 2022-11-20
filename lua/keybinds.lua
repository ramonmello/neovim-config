local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


---------------------------------
-- Navigation and Fuzzy Search --
---------------------------------

function Toggle_nvim_tree()
  local view = require'nvim-tree.view'
  local api = require'nvim-tree.api'

  if view.is_visible() then
    vim.cmd[[:NvimTreeFindFile]]
    return
  end
  api.tree.toggle()
 end

map('n', '<C-b>', '<cmd>lua Toggle_nvim_tree()<CR>')

---------------------
-- LSP, Formatting --
-- ------------------

map('n', '<M-f>', '<cmd>lua vim.lsp.buf.format{ async = true }<CR>')
map('n', '<M-d>', '<cmd>lua vim.lsp.buf.definition()<CR>')

