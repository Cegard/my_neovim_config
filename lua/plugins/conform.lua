return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				typescript = { "deno_fmt" },
				typescriptreact = { "deno_fmt" },
				javascript = { "deno_fmt" },
				javascriptreact = { "deno_fmt" },
				json = { "prettier" },
				markdown = { "prettier" },
				scss = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
			},
			formatters = {
				deno_fmt = {
					command = "deno",
					args = { "fmt", "-" },
					stdin = true,
				},
			},
		},
	},
}
