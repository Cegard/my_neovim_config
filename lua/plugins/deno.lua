return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				denols = {
					settings = {
						deno = {
							enable = true,
							suggest = {
								imports = {
									hosts = {
										["https://deno.land"] = true,
										["https://esm.sh"] = true,
									},
								},
							},
						},
					},
				},
				tsserver = {
					root_dir = require("lspconfig.util").root_pattern("package.json"),
					single_file_support = false,
				},
			},
			setup = {
				denols = function(_, opts)
					opts.root_dir = function(fname)
						return vim.fs.dirname(
							vim.fs.find({ "deno.json", "deno.jsonc" }, { upward = true, path = fname })[1]
						)
					end
					require("lspconfig").denols.setup(opts)
					return true
				end,
			},
		},
	},
}
