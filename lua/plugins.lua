-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
  group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile',
})


return require('packer').startup({
  function(use)

    ---------------------
    -- Package Manager --
    ---------------------

    use('wbthomason/packer.nvim')

    ----------------------
    -- Required plugins --
    ----------------------

    use('nvim-tree/nvim-web-devicons')
    use('nvim-lua/plenary.nvim')

    ----------------------------------------
    -- Theme, Icons, Statusbar, Bufferbar --
    ----------------------------------------

    use({
      'nvim-lualine/lualine.nvim',
      after = 'nvim-web-devicons',
      config = function()
        require('lualine').setup()
      end
    })

    use('morhetz/gruvbox')
    use('arcticicestudio/nord-vim')

    ---------------------------------
    -- Navigation and Fuzzy Search --
    ---------------------------------

    use({
      'nvim-tree/nvim-tree.lua',
      after = 'nvim-web-devicons',
      config = function()
        require('nvim-tree').setup({
          view = {
            adaptive_size = true
          },
          filters = {
            dotfiles = false,
          },
        })
      end
    })

    use('nvim-telescope/telescope.nvim')

    -----------------------------------------------
    -- LSP, Formatting, Completions and Snippets --
    -----------------------------------------------

    use('github/copilot.vim')
    use('neovim/nvim-lspconfig')
    use('ray-x/lsp_signature.nvim')
    use('jose-elias-alvarez/null-ls.nvim')

    -- cmp configuration --
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/nvim-cmp')
    use('onsails/lspkind.nvim')

    --------------------------------------------
    -- Treesitter: Better syntax highlighting --
    --------------------------------------------


  end
})
