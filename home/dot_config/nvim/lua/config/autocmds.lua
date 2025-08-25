-- Per-language indentation
local indent_settings = {
	lua = { tabstop = 2, shiftwidth = 2, softtabstop = 2 },
	javascript = { tabstop = 2, shiftwidth = 2, softtabstop = 2 },
	typescript = { tabstop = 2, shiftwidth = 2, softtabstop = 2 },
	json = { tabstop = 2, shiftwidth = 2, softtabstop = 2 },
	yaml = { tabstop = 2, shiftwidth = 2, softtabstop = 2 },
	python = { tabstop = 4, shiftwidth = 4, softtabstop = 4 },
}

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function(args)
		local ft = vim.bo[args.buf].filetype
		local opts = indent_settings[ft]
		if opts then
			for k, v in pairs(opts) do
				vim.opt_local[k] = v
			end
		end
	end,
})
