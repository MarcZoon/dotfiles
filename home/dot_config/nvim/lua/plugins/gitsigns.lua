return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { hl = "GitGutterAdd", text = "+" },
				change = { hl = "GitGutterChange", text = "~" },
				delete = { hl = "GitGutterDelete", text = "_" },
				topdelete = { hl = "GitGutterDeleteChange", text = "‾" },
				changedelete = { hl = "GitGutterChange", text = "~" },
			},
			signcolumn = true,
		})
	end,
}
