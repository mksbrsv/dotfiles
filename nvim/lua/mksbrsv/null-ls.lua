local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--single-quote", "--jsx-single-quote" } }),
		formatting.stylua,
		formatting.clang_format.with({ extra_args = { "--sort-includes", "--style=Google" } }),
		diagnostics.cppcheck.with({
			extra_args = {
				"--std=c++20",
				"--language=c++",
				"--enable=all",
				"--suppress=missingIncludeSystem",
				"--suppress=unmatchedSuppression",
			},
		}),
		-- diagnostics.eslint,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
