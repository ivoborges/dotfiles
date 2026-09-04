return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"basedpyright",
				"rust_analyzer",
				"texlab",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.lsp.config("basedpyright", {
				capabilities = capabilities,
			})

			vim.lsp.config("r_language_server", {
				capabilities = capabilities,
			})

			vim.lsp.config("texlab", {
				capabilities = capabilities,
			})

			vim.lsp.config("rust_analyzer", {
				capabilities = require("blink.cmp").get_lsp_capabilities(),

				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
						check = {
							command = "clippy",
						},
					},
				},
			})

			vim.lsp.enable("basedpyright")
			vim.lsp.enable("r_language_server")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("texlab")

			local map = vim.keymap.set

			map("n", "gd", vim.lsp.buf.definition)
			map("n", "K", vim.lsp.buf.hover)
			map("n", "gr", vim.lsp.buf.references)
			map("n", "<leader>rn", vim.lsp.buf.rename)
			map("n", "<leader>ca", vim.lsp.buf.code_action)
			map("n", "<leader>f", function()
				vim.lsp.buf.format()
			end)
		end,
	},
}
