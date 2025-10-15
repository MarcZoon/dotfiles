return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			automatic_installation = true,
			ensure_installed = {
				"lua_ls",
				"marksman",
				"pylsp",
				"ruff",
				"stylua",
			},
		},
	},
}
