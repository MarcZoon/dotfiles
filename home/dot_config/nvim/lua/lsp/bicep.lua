local lspconfig = require("lspconfig")

local bicep_lsp_bin = "/usr/local/bin/bicep-langserver/Bicep.LangServer.dll"

vim.cmd([[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]])

lspconfig.bicep.setup({
	cmd = { "dotnet", bicep_lsp_bin },
})
