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
				javascript = { "eslint_d", "prettierd" },
				javascriptreact = { "eslint_d", "prettierd" },
				json = { "prettierd" },
				lua = { "stylua" },
				markdown = { "markdownlint-cli2" },
				python = {
					"ruff_fix",
					"ruff_format",
				},
				typescript = { "eslint_d", "prettierd" },
				typescriptreact = { "eslint_d", "prettierd" },
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
