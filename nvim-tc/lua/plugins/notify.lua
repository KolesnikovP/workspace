return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    -- Try to use Catppuccin palette if available to match user's theme
    local bg = "#000000"
    local ok, palettes_mod = pcall(require, "catppuccin.palettes")
    if ok and type(palettes_mod) == "table" and type(palettes_mod.get_palette) == "function" then
      local palette = palettes_mod.get_palette(vim.g.catppuccin_flavour or "mocha")
      -- Use base or mantle depending on transparency preference
      bg = palette.mantle or palette.base or bg
    else
      -- Fallback: read current Normal highlight bg if set
      local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
      if normal and normal.bg then
        bg = string.format("#%06x", normal.bg)
      end
    end

    require("notify").setup({
      background_colour = bg,
    })

    vim.notify = require("notify")
  end,
}
