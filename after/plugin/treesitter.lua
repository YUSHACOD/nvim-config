require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c","javascript","cpp","python","help","typescript", "lua", "vim", "help", "query" },

  sync_install = false,

  auto_install = true,


  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
