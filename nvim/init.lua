--[[ init.lua ]]

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require("vars") -- Variables
require("plug") -- Plugins
vim.cmd([[PackerInstall]])
require("opts") -- Options
require("keys") -- Keymaps
require("null-fs-config")
require("mason-config")
require("lsp-config.language-servers") -- LSP configurations
require("lsp-config.nvim-cmp")
require("plugin-configs.nvim-tree")
require("plugin-configs.lualine")
require("plugin-configs.nvim-autopairs")
require("plugin-configs.nvim-treesitter")
require("barbar-config")
require("neogen-config")
