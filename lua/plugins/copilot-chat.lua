return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		name = "copilot-chat",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			-- See Configuration section for options
		},
	},
}
