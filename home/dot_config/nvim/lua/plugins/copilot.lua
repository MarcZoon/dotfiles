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
			should_attach = function(_, bufname)
				if string.match(bufname, "%.env$") then
					return false
				end
				if string.match(bufname, "^env$") then
					return false
				end
				return true
			end,
		})
	end,
}
