--- NOTE: I am using friendly-snippets, but it is included in the dependencies for luasnip
--- in the kickstart.plugins.blink-cmp file
return {
  --- plugin for easier snippet creation
  {
    'chrisgrieser/nvim-scissors',
    dependencies = 'nvim-telescope/telescope.nvim', -- if using telescope
    opts = {
      snippetDir = 'path/to/your/snippetFolder',
    },
    {
      'iurimateus/luasnip-latex-snippets.nvim',
      -- vimtex isn't required if using treesitter
      -- requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
      requires = { 'L3MON4D3/LuaSnip' },
      config = function()
        require('luasnip-latex-snippets').setup {
          use_treesitter = true,
          allow_on_markdown = true,
        }
        require('luasnip').config.setup {
          enable_autosnippets = true,
        }
      end,
    },
  },
}
