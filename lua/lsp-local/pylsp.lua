local config = {
	settings = {
		pylsp = {
			-- configurationSources = {"pycodestyle"},
			plugins = {
				autopep8 = {enabled = false},
				yapf = {enabled = false},
				black = {
					enabled = true,
					-- cache_config = true,
					-- line_length = 88,
					-- preview = false,
				},
				flake8 = {
					enabled = false,
					exclude = {},
					executable = "flake8",
				},
				jedi_completion = {
					enabled = true,
					include_params = true,
					include_class_objects = true,
					fuzzy = false,
					eager = false,
					resolve_at_most = 25,
					cache_for = {"pandas", "numpy", "pytorch", "tensorflow", "matplotlib"},
				},
				jedi_definition = {
					enabled = true,
					follow_imports = true,
					follow_builtin_imports  = true,
				},
				jedi_hover = {
					enabled = true,
				},
				jedi_references = {
					enabled = true,
				},
				jedi_signature_help = {
					enabled = true,
				},
				jedi_symbols = {
					enabled = true,
					all_scopes = true,
					include_import_symbols = true,
				},
				mccabe = {enabled = false},
				preload = {enabled = true},
				pycodestyle = {
					enabled = true,
					ignore = {'E203'},
				},
				pydocstyle = {enabled = false},
				pyflakes = {enabled = true},
				pylint = {enabled = false},
				rope_completion = {enabled = false},
			}
		}
	}
}
return {
	config = function(_)
		return config
	end,
}
