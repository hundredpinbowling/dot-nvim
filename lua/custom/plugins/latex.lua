return {
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      -- VimTeX configuration goes here, e.g.
      --vim.g.vimtex_fold_manual = true
      --vim.g.vimtex_quickfix_mode = false
      vim.g.vimtex_compiler_progname = 'nvr'
      vim.g.vimtex_view_method = 'zathura_simple'
      --vim.g.tex_conceal = 'abdmg'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
