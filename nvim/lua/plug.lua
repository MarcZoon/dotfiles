--[[ plug.lua ]]

--Bootstrap Packer
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

ensure_packer()

--Start Packer
return require("packer").startup(function(use)
	--VISUAL
	use({ "mhinz/vim-startify" })
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({ "DanilaMihailov/beacon.nvim" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	})
	use({ "Mofiqul/dracula.nvim" })
	use({ "rcarriga/nvim-notify" })

	--GENERAL
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "majutsushi/tagbar" })
	use({ "Yggdroot/indentLine" })
	use({ "windwp/nvim-autopairs" })
	use({ "romgrk/barbar.nvim" })
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use({ "preservim/nerdcommenter" })
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })

	-- LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jayp0521/mason-null-ls.nvim" })
	use({ "neovim/nvim-lspconfig" })
	use({ "mfussenegger/nvim-dap" })
	use({ "jayp0521/mason-nvim-dap.nvim" })
	use({ "hrsh7th/nvim-cmp" }) -- Autocompletion plugin
	use({ "hrsh7th/cmp-nvim-lsp" }) -- LSP source for nvim-cmp
	use({ "saadparwaiz1/cmp_luasnip" }) -- Snippets source for nvim-cmp
	use({ "L3MON4D3/LuaSnip" }) -- Snippets plugin
	use({ "onsails/lspkind-nvim" })

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({ "nvim-treesitter/nvim-treesitter-refactor" })
end)
