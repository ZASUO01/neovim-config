local themes = {
  { "Mofiqul/dracula.nvim" },
	{ "ellisonleao/gruvbox.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly" },
	{ "rose-pine/neovim", name = "rose-pine" },
}

themes = vim.tbl_map(function(theme)
  theme.lazy = false
  theme.priority = 1000
  return theme
end, themes)

return themes
