return {
  --- goyo is a plugin for removing distractions while writing prose
  {
    'junegunn/goyo.vim',
    ft = { 'markdown' },
  },
  {
    'vim-pandoc/vim-pandoc',
  },
  {
    -- offers syntax highlighting for Markdown
    -- useful for highlighting LaTeX in Markdown
    'vim-pandoc/vim-pandoc-syntax',
    init = function()
      local group = vim.api.nvim_create_augroup('pandoc_syntax', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufFilePre', 'BufRead' }, {
        pattern = { '*.md', '*.qmd', '*.rmd' },
        group = 'pandoc_syntax',
        command = 'set filetype=markdown.pandoc',
      })
    end,
  },
  {
    -- 'toppair/peek.nvim',
    'sazk07/peek.nvim',
    ft = { 'pandoc', 'markdown', 'markdown.pandoc', 'rmd', 'quarto' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        auto_load = false,
        syntax = false,
        app = 'browser',
        filetype = { 'pandoc', 'markdown', 'rmd', 'quarto' },
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
      vim.keymap.set('n', '<leader>mp', '<cmd>PeekOpen<CR>', { desc = '[m]arkdown [p]review open' })
      vim.keymap.set('n', '<leader>mq', '<cmd>PeekClose<CR>', { desc = '[m]arkdown preview [q]uit' })
    end,
  },
  -- {
  --   'MeanderingProgrammer/render-markdown.nvim',
  --   dependencies = {
  --     'nvim-treesitter/nvim-treesitter',
  --     { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  --   },
  --   ft = { 'markdown', 'rmd', 'quarto' },
  --   config = function()
  --     require('render-markdown').setup {
  --       render_modes = true,
  --       heading = { enabled = false },
  --       -- code = { language_icon = false },
  --       -- dash = { enabled = false },
  --       completions = { blink = { enabled = true } },
  --       latex = {
  --         converter = { 'utftex' },
  --       },
  --     }
  --   end,
  -- },
}
