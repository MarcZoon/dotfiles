return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
			},
			panel = {
				enabled = false,
			},
			filetypes = {
				javascript = true,
				lua = true,
				python = true,
				typescript = true,
				["*"] = false,
			},
		})
	end,
}
