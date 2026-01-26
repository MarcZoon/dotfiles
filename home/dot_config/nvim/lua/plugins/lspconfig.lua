return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config.pylsp = require("lsp.pylsp")
	end,
}
