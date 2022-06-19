require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "c",
    "lua",
    "go",
    "javascript",
    "python",
    "tsx"
  },
  sync_install = false,
  highlight = {
    enable = true,
  },
  indent = {
    enable = false
  }
}
