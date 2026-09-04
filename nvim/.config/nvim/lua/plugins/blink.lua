return {
	"Saghen/blink.cmp",
	version = "*",

	opts = {
		enabled = function()
			local ft = vim.bo.filetype

			return not vim.tbl_contains({
				"markdown",
				"text",
				"vimwiki",
			}, ft)
		end,

		keymap = {
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			["<CR>"] = { "accept", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = {
				auto_show = true,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
	},
}
