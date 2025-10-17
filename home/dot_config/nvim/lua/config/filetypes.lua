vim.filetype.add({
	extension = {
		["sh.tmpl"] = "sh",
	},
	pattern = {
		[".*%.sh%.tmpl"] = "sh",
	},
})
