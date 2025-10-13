local bicep_lsp_bin = "/usr/local/bin/bicep-langserver/Bicep.LangServer.dll"

vim.cmd([[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]])

return {
	cmd = { "dotnet", bicep_lsp_bin },
}
