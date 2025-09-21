return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          -- height = 0.95,
          -- width = 0.9,
         -- preview_height = 0.55,
          prompt_position = "top",
        },
        preview_cutoff = 1,
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            previewer = false,
            prompt_title = false,
          }),
        },
      },
    })

    telescope.load_extension("ui-select")
  end,
}
