return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        -- JS
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
        -- GOLANG
                -- Formatting
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
                -- Diagnostics
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.staticcheck,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
