local g = vim.g
local o = vim.o

-- Better editor UI
o.number = true
o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smarttab = true
o.termguicolors = true
o.cursorline = true
o.cursorcolumn = true

-- LSP
o.completeopt = 'menuone,noselect'
