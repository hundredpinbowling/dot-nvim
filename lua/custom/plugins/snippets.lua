--- NOTE: I am using L3MON4D3/LuaSnip, but it is included in the dependencies for saghen/blink.cmp
--- in the kickstart.plugins.blink-cmp file
return {
  --- plugin for easier snippet creation
  {
    'chrisgrieser/nvim-scissors',
    dependencies = {
      'nvim-telescope/telescope.nvim', -- if using telescope
      'L3MON4D3/LuaSnip',
    },
    opts = {
      snippetDir = 'snippets',
    },
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load {
        paths = { 'snippets' },
      }
    end,
  },
  {
    'iurimateus/luasnip-latex-snippets.nvim',
    -- vimtex isn't required if using treesitter
    dependencies = { 'L3MON4D3/LuaSnip' },
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
  -- `friendly-snippets` contains a variety of premade snippets.
  --    See the README about individual language/framework/plugin snippets:
  --    https://github.com/rafamadriz/friendly-snippets
  {
    'rafamadriz/friendly-snippets',
    config = function() require('luasnip.loaders.from_vscode').lazy_load() end,
  },
}
