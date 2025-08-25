return {
	{
		"stevearc/conform.nvim",
		after = {
			"mason-org/mason.nvim",
		},
		opts = {
			formatters_by_ft = {
				css = { "prettierd" },
				html = { "prettierd" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				json = { "prettierd" },
				lua = { "stylua" },
				markdown = { "prettierd" },
				python = {
					"ruff_fix",
					"ruff_format",
				},
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
			},
			format_on_save = {
				lsp_format = "fallback",
			},
		},
	},
	{
		"zapling/mason-conform.nvim",
		event = "BufWritepost",
		lazy = false,
		config = true,
		after = {
			"mason-org/mason.nvim",
			"stevearc/conform.nvim",
		},
	},
}
