return {
	"mrcjkb/rustaceanvim",
	version = "^5",
	lazy = false, -- loads on startup, handles its own filetype detection
	init = function()
		vim.g.rustaceanvim = {
			server = {
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			},
		}
	end,
}
