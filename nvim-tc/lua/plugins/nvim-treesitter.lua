-- TEMP EXPERIMENTS

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
    local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "typescript", "lua", "go", "tsx", "javascript" },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
