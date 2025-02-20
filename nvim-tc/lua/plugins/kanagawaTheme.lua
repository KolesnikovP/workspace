return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    local config = require("kanagawa")
    config.setup({
      transparent = true,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        -- 				dark = "wave", -- try "wave" !
        --				light = "lotus",
      },
    })
    vim.cmd("colorscheme kanagawa")
    -- vim.cmd("colorscheme kanagawa-dragon")
    --  vim.cmd("colorscheme kanagawa-wave")
  end,
}
