return {
  {
    'miikanissi/modus-themes.nvim',
    priority = 1000,
    config = function()
      -- By default, the theme will choose between light (modus_operandi) and dark (modus_vivendi)
      -- based on the background value set with vim.o.background.
      vim.cmd.colorscheme 'modus'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
