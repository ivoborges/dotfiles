return {
	{
		"stevearc/conform.nvim",

		opts = {
			formatters_by_ft = {
				python = { "ruff_format" },
				r = { "styler" },
			},
			{
				formatters_by_ft = {
					rust = { "rustfmt" },
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},

			formatters = {
				styler = {
					command = "Rscript",
					args = {
						"-e",
						"styler::style_file(commandArgs(TRUE)[1])",
						"$FILENAME",
					},
				},
			},
		},
	},
}
