return {
	"akinsho/bufferline.nvim",
	lazy = false,
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"famiu/bufdelete.nvim",
	},
	after = {
		"nvim-tree/nvim-tree.lua",
	},
	keys = {
		{ "<leader>bc", ":Bdelete<CR>", desc = "[B]uffer [P]in Toggle" },
		{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "[B]uffer [P]in Toggle" },
		{ "<leader>bpc", "<Cmd>BufferLinePickClose<CR>", desc = "[B]uffer [P]ick [C]lose" },
		{ "<leader>b[", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
		{ "<leader>b]", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
		{ "<leader>b{", "<Cmd>BufferLineMovePrev<CR>", desc = "Move Buffer Prev" },
		{ "<leader>b}", "<Cmd>BufferLineMoveNext<CR>", desc = "Move Buffer Right" },
	},
	config = function()
		vim.opt.termguicolors = true

		--require("nvim-tree.api").tree.open()
		require("bufferline").setup({
			options = {
				numbers = "none",
				diagnostics = "nvim_lsp",
				close_command = "Bdelete! %d",
				right_mouse_command = "Bdelete! %d",
				offsets = {
					filetype = "NvimTree",
					text = "Explorer",
					text_align = "center",
					highlight = "Directory",
					padding = 1,
				},
				separator = true,
			},
		})
	end,
}
