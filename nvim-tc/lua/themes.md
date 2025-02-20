return {
"catppuccin/nvim",
name = "catppuccin",
priority = 1000,
config = function()
local config = require("catppuccin")
config.setup({
flavour = "auto", -- latte, frappe, macchiato, mocha
transparent_background = true,
})
-- catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd.colorscheme("catppuccin")
end,
}
