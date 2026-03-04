return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"tsx",
				"typescript",
				"javascript",
				"html",
				"css",
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		init = function()
			vim.filetype.add({
				extension = {
					tsx = "typescriptreact",
					jsx = "javascriptreact",
				},
			})
		end,
	},
}
