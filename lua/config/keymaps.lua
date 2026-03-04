-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<Right>", function()
	if vim.fn["copilot#GetDisplayedSuggestion"]().text ~= "" then
		vim.api.nvim_feedkeys(vim.fn["copilot#Accept"](""), "i", true)
	else
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, false, true), "n", false)
	end
end, { desc = "Accept Copilot suggestion or move right" })
