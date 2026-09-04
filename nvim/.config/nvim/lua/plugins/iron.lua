return {
	{
		"Vigemus/iron.nvim",
		config = function()
			local iron = require("iron.core")

			iron.setup({
				config = {
					repl_definition = {
						r = {
							command = { "R", "--quiet", "--no-save" },
						},
					},

					repl_open_cmd = require("iron.view").split.vertical.botright(80),
				},

				keymaps = {
					send_motion = "<space>sc",
					visual_send = "<space>sc",
					send_file = "<space>sf",
					send_line = "<space>sl",
					send_until_cursor = "<space>su",
					send_mark = "<space>sm",
					mark_motion = "<space>mc",
					interrupt = "<space>s<space>",
					exit = "<space>sq",
					clear = "<space>cl",
				},

				highlight = {
					italic = true,
				},

				ignore_blank_lines = true,
			})
		end,
	},
}
