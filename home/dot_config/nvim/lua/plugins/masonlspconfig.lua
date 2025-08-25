return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
			automatic_enable = true,
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"ruff",
			},
		})
	end,
}
