return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"markdown",
				"markdown_inline",
				"latex",
				"bibtex",
				"python",
				"r",
				"rust",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
