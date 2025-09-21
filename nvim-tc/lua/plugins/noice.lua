-- shows cmd line and messages as a floating window
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
  config = function()
    require("noice").setup({
      cmdline = { enabled = true }, -- floating window for :
      messages = { enabled = true },
    })
  end
}
