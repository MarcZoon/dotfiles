return {
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				nilness = true,
				shadow = true,
				unusedwrite = true,
				fieldalignment = true,
			},
			staticcheck = true, -- enable staticcheck diagnostics
			gofumpt = false, -- use gofumpt formatting
			usePlaceholders = true,
			completeUnimported = true,
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
}
